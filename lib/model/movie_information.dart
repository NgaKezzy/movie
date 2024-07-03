// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'movie_information.g.dart';

@JsonSerializable()
class MovieInformation {
  final String? name;

  final String? slug;

  @JsonKey(name: "origin_name")
  final String? originName;

  @JsonKey(name: "poster_url")
  final String? posterUrl;

  @JsonKey(name: "thumb_url")
  final String? thumbUrl;

  final int? year;

  final String? actor;

  final bool? isFavorite;

  MovieInformation({
    this.name,
    this.slug,
    this.originName,
    this.posterUrl,
    this.thumbUrl,
    this.year = 2020,
    this.actor,
    this.isFavorite = false
  });

  factory MovieInformation.fromJson(Map<String, dynamic> json) =>
      _$MovieInformationFromJson(json);

  Map<String, dynamic> toJson() => _$MovieInformationToJson(this);

  static List<MovieInformation> convertToList(List<dynamic> json) {
    //json ở đây là data
    return json
        .map<MovieInformation>((item) => MovieInformation.fromJson(item))
        .toList();
    // post này là từng instance   ------------- post này là  để ấy vào trong fromjson trong factory rồi chuyển thành list
  }

  @override
  String toString() {
    return 'MovieInformation(name: $name, slug: $slug, originName: $originName, posterUrl: $posterUrl, thumbUrl: $thumbUrl, year: $year, isFavorite: $isFavorite, actor: $actor)';
  }
}
