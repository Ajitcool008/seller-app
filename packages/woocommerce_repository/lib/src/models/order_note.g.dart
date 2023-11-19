// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderNote _$OrderNoteFromJson(Map<String, dynamic> json) => OrderNote(
      id: json['id'] as int?,
      dateCreated: json['date_created'] as String?,
      author: json['author'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$OrderNoteToJson(OrderNote instance) => <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'note': instance.note,
      'date_created': instance.dateCreated,
    };
