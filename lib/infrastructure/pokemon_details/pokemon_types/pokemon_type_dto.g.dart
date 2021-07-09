// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonTypeDTO _$_$_PokemonTypeDTOFromJson(Map<String, dynamic> json) {
  return _$_PokemonTypeDTO(
    type: json['type'] == null
        ? null
        : TypeDTO.fromJson(json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PokemonTypeDTOToJson(_$_PokemonTypeDTO instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$_TypeDTO _$_$_TypeDTOFromJson(Map<String, dynamic> json) {
  return _$_TypeDTO(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_TypeDTOToJson(_$_TypeDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
