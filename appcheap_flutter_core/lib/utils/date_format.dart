import 'package:intl/intl.dart';

String formatDate({required String date, String dateFormat = 'MMMM d, y', String locate = 'en_US'}) {
  DateTime _date = DateTime.parse(date);
  return DateFormat(dateFormat, 'en_US').format(_date);
}

bool compareSpaceDate({required String date, int space = 30}) {
  DateTime _dateNow = DateTime.now();
  DateTime _date = DateTime.parse(date).add(Duration(days: space));
  return !_dateNow.isAfter(_date);
}

String? formatPosition({Duration? position}) {
  return RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$').firstMatch(position.toString())?.group(1);
}

String formatChartDate({required String? date, String? format}) {
  if (date == null) {
    return "";
  }
  DateTime inputDate = DateFormat(format ?? "MM d yy").parse(date);
  String outputDate = DateFormat('dd\nMMM').format(inputDate);
  return outputDate;
}

String formatDateToDayOfWeek({required String? date, String? format}) {
  if (date == null) {
    return "";
  }
  DateTime inputDate = DateFormat(format ?? "MM d yy").parse(date);
  String outputDate = DateFormat('d\nEE').format(inputDate);
  return outputDate;
}
