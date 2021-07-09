import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/domain/pokemon/value_objects.dart';

part 'pokemon_dto.freezed.dart';
part 'pokemon_dto.g.dart';

@freezed
abstract class PokemonDTO implements _$PokemonDTO {
  const PokemonDTO._();
  const factory PokemonDTO({
    @required @JsonKey(name: 'name') String namePath,
    @required @JsonKey(name: 'url') String url,
  }) = _PokemonDTO;

  factory PokemonDTO.fromDomain(Pokemon pokemon) {
    return PokemonDTO(
      namePath: pokemon.pokemonName.getOrCrash(),
      url: pokemon.pokemonURL.getOrCrash(),
    );
  }

  Pokemon toDomain() {
    return Pokemon(
      pokemonName: PokemonName(namePath),
      pokemonURL: PokemonURL(url),
    );
    //
  }

  factory PokemonDTO.fromJson(Map<String, dynamic> json) =>
      _$PokemonDTOFromJson(json);
}
