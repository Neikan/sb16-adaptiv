// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiHotel _$ApiHotelFromJson(Map<String, dynamic> json) => ApiHotel(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      poster: json['poster'] as String,
    );

Map<String, dynamic> _$ApiHotelToJson(ApiHotel instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'poster': instance.poster,
    };
