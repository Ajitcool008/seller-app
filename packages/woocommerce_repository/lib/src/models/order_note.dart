import 'package:json_annotation/json_annotation.dart';

part 'order_note.g.dart';

@JsonSerializable()
class OrderNote {
  int? id;
  String? author;
  String? note;

  @JsonKey(name: 'date_created')
  String? dateCreated;
  OrderNote({
    this.id,
    this.dateCreated,
    this.author,
    this.note,
  });

  factory OrderNote.fromJson(Map<String, dynamic> json) => _$OrderNoteFromJson(json);

  Map<String, dynamic> toJson() => _$OrderNoteToJson(this);
}
