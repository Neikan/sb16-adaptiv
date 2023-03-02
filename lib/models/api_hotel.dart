// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'api_hotel.g.dart';

@JsonSerializable()
class ApiHotel {
  final String uuid, name, poster;

  ApiHotel({
    required this.uuid,
    required this.name,
    required this.poster,
  });

  factory ApiHotel.fromJson(Map<String, dynamic> json) =>
      _$ApiHotelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiHotelToJson(this);
}
