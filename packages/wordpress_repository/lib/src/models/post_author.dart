import 'package:json_annotation/json_annotation.dart';
import 'package:wordpress_repository/src/models/models.dart';

part 'post_author.g.dart';

@JsonSerializable()
class PostAuthor {
  int? id;
  String? name;
  String? url;
  String? description;
  String? link;
  String? slug;
  @JsonKey(name: 'avatar_urls')
  Avatar? avatar;
  @JsonKey(name: 'count_posts')
  int? count;

  PostAuthor({
    this.id,
    this.name,
    this.url,
    this.description,
    this.link,
    this.slug,
    this.avatar,
    this.count,
  });

  factory PostAuthor.fromJson(Map<String, dynamic> json) => _$PostAuthorFromJson(json);
  Map<String, dynamic> toJson() => _$PostAuthorToJson(this);
}
