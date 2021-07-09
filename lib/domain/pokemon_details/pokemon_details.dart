import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/pokemon/value_objects.dart';
import 'package:pokedex/domain/pokemon_details/value_objects.dart';

part 'pokemon_details.freezed.dart';

@freezed
abstract class PokemonDetails implements _$PokemonDetails {
  const PokemonDetails._();
  const factory PokemonDetails({
    @required PokemonID id,
    @required PokemonName name,
    @required BaseExperience baseExperience,
    @required PokemonHeight pokemonHeight,
    @required PokemonWeight pokemonWeight,
    // @required BaseStats baseStats,
  }) = _Pokemon;

  factory PokemonDetails.empty() => PokemonDetails(
        id: PokemonID(0),
        name: PokemonName(""),
        baseExperience: BaseExperience(0),
        pokemonHeight: PokemonHeight(0),
        pokemonWeight: PokemonWeight(0),
        // baseStats: BaseStats(0),
      );
}
