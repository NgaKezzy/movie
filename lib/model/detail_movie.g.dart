// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailMovie _$DetailMovieFromJson(Map<String, dynamic> json) => DetailMovie(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      originName: json['origin_name'] as String?,
      content: json['content'] as String?,
      type: json['type'] as String?,
      status: json['status'] as String?,
      posterUrl: json['poster_url'] as String?,
      thumbUrl: json['thumb_url'] as String?,
      isCopyright: json['isCopyright'] as bool?,
      subDocquyen: json['subDocquyen'] as bool?,
      chieurap: json['chieurap'] as bool?,
      trailerUrl: json['trailerUrl'] as String?,
      time: json['time'] as String?,
      episodeCurrent: json['episodeCurrent'] as String?,
      episodeTotal: json['episodeTotal'] as String?,
      quality: json['quality'] as String?,
      lang: json['lang'] as String?,
      notify: json['notify'] as String?,
      showtimes: json['showtimes'] as String?,
      year: (json['year'] as num?)?.toInt(),
      view: (json['view'] as num?)?.toInt(),
      actor:
          (json['actor'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DetailMovieToJson(DetailMovie instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'origin_name': instance.originName,
      'content': instance.content,
      'type': instance.type,
      'status': instance.status,
      'poster_url': instance.posterUrl,
      'thumb_url': instance.thumbUrl,
      'isCopyright': instance.isCopyright,
      'subDocquyen': instance.subDocquyen,
      'chieurap': instance.chieurap,
      'trailerUrl': instance.trailerUrl,
      'time': instance.time,
      'episodeCurrent': instance.episodeCurrent,
      'episodeTotal': instance.episodeTotal,
      'quality': instance.quality,
      'lang': instance.lang,
      'notify': instance.notify,
      'showtimes': instance.showtimes,
      'year': instance.year,
      'view': instance.view,
      'actor': instance.actor,
    };
