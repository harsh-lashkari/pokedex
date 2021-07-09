// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDetailsDTO _$_$_PokemonDetailsDTOFromJson(Map<String, dynamic> json) {
  return _$_PokemonDetailsDTO(
    pokemonID: json['id'] as int,
    pokemonName: json['name'] as String,
    baseExperience: json['base_experience'] as int,
    pokemonHeight: json['height'] as int,
    pokemonWeight: json['weight'] as int,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_PokemonDetailsDTOToJson(
        _$_PokemonDetailsDTO instance) =>
    <String, dynamic>{
      'id': instance.pokemonID,
      'name': instance.pokemonName,
      'base_experience': instance.baseExperience,
      'height': instance.pokemonHeight,
      'weight': instance.pokemonWeight,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
