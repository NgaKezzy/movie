// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'movie_performer.g.dart';
@JsonSerializable()
class MoviePerformer {
  final String? image;
  final String? name;
  final String? namePerformer;
  MoviePerformer({
    this.image,
    this.name,
    this.namePerformer,
  });
  
  factory MoviePerformer.fromJson(Map<String, dynamic> json) =>
      _$MoviePerformerFromJson(json);

  Map<String, dynamic> toJson() => _$MoviePerformerToJson(this);

  static List<MoviePerformer> convertToList(List<dynamic> json) {
    //json ở đây là data
    return json
        .map<MoviePerformer>((item) => MoviePerformer.fromJson(item))
        .toList();
    // post này là từng instance   ------------- post này là  để ấy vào trong fromjson trong factory rồi chuyển thành list
  }
}

