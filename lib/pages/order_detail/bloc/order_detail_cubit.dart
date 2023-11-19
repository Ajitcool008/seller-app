// App core
import 'package:appcheap_flutter_core/di/di.dart';

// Flutter library
import 'package:flutter/material.dart';

// Packages & Dependencies or Helper function
import 'package:bloc/bloc.dart';
import 'package:flutter_store_manager/common/bloc/state_base.dart';

// Repository packages
import 'package:order_repository/order_repository.dart';

part 'order_detail_state.dart';

class OrderDetailCubit extends Cubit<OrderDetailState> {
  final String token;
  final RequestCancel _cancelToken = RequestCancel();
  final OrderRepository orderRepository;
  OrderDetailCubit({required this.orderRepository, required this.token})
      : super(OrderDetailState(orderDetail: OrderData()));

  ///need to handle case: update status failure, we need reset to current
  /// status(corresponding database)
  OrderDetailStatus currentStatus = OrderDetailStatus.pending;

  Future<void> getOrderDetail({required int orderId}) async {
    emit(state.copyWith(
      actionState: const LoadingState(),
    ));
    await _getOrderDetail(id: orderId);
  }

  Future<void> updateOrderStatus(BuildContext context, int id) async {
    if (state.orderStatus == currentStatus) {
      emit(state.copyWith(updateOrderStatus: UpdateOrderStatus.notChange));
    } else {
      emit(state.copyWith(
        buttonStatus: const LoadingState(),
      ));
      try {
        await _updateOrderStatus(
          id: id,
          status: OrderDetailState.mapOrderStatus(key: state.orderStatus) as String,
        );
        emit(state.copyWith(
          updateOrderStatus: UpdateOrderStatus.success,
          updateData: true,
        ));
      } catch (_) {
        emit(state.copyWith(updateOrderStatus: UpdateOrderStatus.failure));
      }
    }
  }

  Future<void> _getOrderDetail({required int id}) async {
    try {
      OrderData orderDetail = await orderRepository.getOrderDetail(
        id: id,
        requestData: RequestData(
          query: {'app-builder-decode': true},
          token: token,
          cancelToken: _cancelToken,
        ),
      );

      currentStatus = OrderDetailState.mapOrderStatus(key: orderDetail.status ?? "") as OrderDetailStatus;
      emit(
        state.copyWith(
          actionState: LoadedState(data: orderDetail.id),
          orderDetail: orderDetail,
          orderStatus: OrderDetailState.mapOrderStatus(key: orderDetail.status ?? "") as OrderDetailStatus,
        ),
      );
    } on RequestError catch (e) {
      if (e.type != RequestErrorType.cancel) {
        emit(state.copyWith(actionState: ErrorState(data: e.message)));
      }
    }
  }

  void onStatus(String statusOld) {
    emit(state.copyWith(statusOld: statusOld, statusNew: false));
  }

  Future<void> _updateOrderStatus({required int id, required String status}) async {
    try {
      emit(state.copyWith(buttonStatus: const LoadingState()));
      await orderRepository.updateOrderStatus(
        id: id,
        requestData: RequestData(
          query: {'app-builder-decode': true},
          data: {"status": status},
          token: token,
          cancelToken: _cancelToken,
        ),
      );
      emit(state.copyWith(
        buttonStatus: const LoadedState(),
        statusNew: true,
      ));
    } on RequestError catch (e) {
      if (e.type != RequestErrorType.cancel) {
        emit(state.copyWith(
          buttonStatus: const LoadedState(),
          statusError: e.message,
          orderStatus: OrderDetailState.mapOrderStatus(key: state.statusOld) as OrderDetailStatus,
          updateOrderStatus: UpdateOrderStatus.failure,
        ));
        rethrow;
      }
    }
  }

  void changeOrderStatusUI({required OrderDetailStatus status, bool onChangedStatus = false}) {
    emit(state.copyWith(
      orderStatus: status,
      onChangedStatus: onChangedStatus,
    ));
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
