import 'package:json_annotation/json_annotation.dart';
part 'detail_movie.g.dart';

@JsonSerializable()
class DetailMovie {
  String? name;
  String? slug;
  @JsonKey(name: 'origin_name')
  String? originName;
  String? content;
  String? type;
  String? status;
  @JsonKey(name: 'poster_url')
  String? posterUrl;
  @JsonKey(name: 'thumb_url')
  String? thumbUrl;
  bool? isCopyright;
  bool? subDocquyen;
  bool? chieurap;
  String? trailerUrl;
  String? time;
  String? episodeCurrent;
  String? episodeTotal;
  String? quality;
  String? lang;
  String? notify;
  String? showtimes;
  int? year;
  int? view;
  List<String>? actor;

  DetailMovie({
    this.name,
    this.slug,
    this.originName,
    this.content,
    this.type,
    this.status,
    this.posterUrl,
    this.thumbUrl,
    this.isCopyright,
    this.subDocquyen,
    this.chieurap,
    this.trailerUrl,
    this.time,
    this.episodeCurrent,
    this.episodeTotal,
    this.quality,
    this.lang,
    this.notify,
    this.showtimes,
    this.year,
    this.view,
    this.actor,
  });

  factory DetailMovie.fromJson(Map<String, dynamic> json) =>
      _$DetailMovieFromJson(json);

  Map<String, dynamic> toJson() => _$DetailMovieToJson(this);

  static List<DetailMovie> convertToList(List<dynamic> json) {
    //json ở đây là data
    return json.map<DetailMovie>((item) => DetailMovie.fromJson(item)).toList();
    // post này là từng instance   ------------- post này là  để ấy vào trong fromjson trong factory rồi chuyển thành list
  }
}
