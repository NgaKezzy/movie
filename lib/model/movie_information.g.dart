// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieInformation _$MovieInformationFromJson(Map<String, dynamic> json) =>
    MovieInformation(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      originName: json['origin_name'] as String?,
      posterUrl: json['poster_url'] as String?,
      thumbUrl: json['thumb_url'] as String?,
      year: (json['year'] as num?)?.toInt() ?? 2020,
      actor: json['actor'] as String?,
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$MovieInformationToJson(MovieInformation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'origin_name': instance.originName,
      'poster_url': instance.posterUrl,
      'thumb_url': instance.thumbUrl,
      'year': instance.year,
      'actor': instance.actor,
      'isFavorite': instance.isFavorite,
    };
