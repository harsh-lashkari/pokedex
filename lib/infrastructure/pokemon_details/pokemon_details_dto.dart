import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/pokemon/value_objects.dart';
import 'package:pokedex/domain/pokemon_details/pokemon_details.dart';
import 'package:pokedex/domain/pokemon_details/value_objects.dart';

part 'pokemon_details_dto.freezed.dart';
part 'pokemon_details_dto.g.dart';

@freezed
abstract class PokemonDetailsDTO implements _$PokemonDetailsDTO {
  const PokemonDetailsDTO._();
  const factory PokemonDetailsDTO({
    @required @JsonKey(name: 'id') int pokemonID,
    @required @JsonKey(name: 'name') String pokemonName,
    @required @JsonKey(name: 'base_experience') int baseExperience,
    @required @JsonKey(name: 'height') int pokemonHeight,
    @required @JsonKey(name: 'weight') int pokemonWeight,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
    // @required @JsonKey(name: 'stats') List<dynamic> listPokemonStats,
  }) = _PokemonDetailsDTO;

  PokemonDetails toDomain() {
    return PokemonDetails(
      id: PokemonID(pokemonID),
      name: PokemonName(pokemonName),
      baseExperience: BaseExperience(baseExperience),
      pokemonHeight: PokemonHeight(pokemonHeight),
      pokemonWeight: PokemonWeight(pokemonWeight),

      // listPokemonStats: ListPokemonStats<dynamic>(listPokemonStats),
    );
  }

  factory PokemonDetailsDTO.fromDomain(PokemonDetails pokemon) {
    return PokemonDetailsDTO(
      serverTimeStamp: FieldValue.serverTimestamp(),
      pokemonID: pokemon.id.getOrCrash(),
      pokemonHeight: pokemon.pokemonHeight.getOrCrash(),
      baseExperience: pokemon.baseExperience.getOrCrash(),
      pokemonName: pokemon.name.getOrCrash(),
      pokemonWeight: pokemon.pokemonWeight.getOrCrash(),
    );
  }

  factory PokemonDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsDTOFromJson(json);

  factory PokemonDetailsDTO.fromFireStore(DocumentSnapshot doc) {
    return PokemonDetailsDTO.fromJson(doc.data())
        .copyWith(pokemonID: int.parse(doc.id));
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
