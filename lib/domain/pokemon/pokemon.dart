import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/pokemon/value_objects.dart';

part 'pokemon.freezed.dart';

@freezed
abstract class Pokemon implements _$Pokemon {
  const Pokemon._();
  const factory Pokemon({
    // UniqueId id,
    @required PokemonName pokemonName,
    @required PokemonURL pokemonURL,
  }) = _Pokemon;

  factory Pokemon.empty() => Pokemon(
        pokemonName: PokemonName(""),
        pokemonURL: PokemonURL(""),
      );
}
