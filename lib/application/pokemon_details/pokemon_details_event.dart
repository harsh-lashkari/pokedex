part of 'pokemon_details_bloc.dart';

@freezed
abstract class PokemonDetailsEvent with _$PokemonDetailsEvent {
  const factory PokemonDetailsEvent.started(String url) = _Started;

  const factory PokemonDetailsEvent.detailsFetched(
          Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails) =
      _DetailsFetched;

  const factory PokemonDetailsEvent.typesFetched(
          Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes) =
      _TypesFetched;

  const factory PokemonDetailsEvent.pokemonCreated(
      PokemonDetails pokemonDetails) = _PokemonCreated;

  const factory PokemonDetailsEvent.watchUserPokemon() = _WatchUserPokemon;

  const factory PokemonDetailsEvent.streamPokemonData(
      Either<PokemonDetailsFailure, List<PokemonDetails>>
          failureOrPokemon) = StreamPokemonData;

  const factory PokemonDetailsEvent.pokemonDelete(
      PokemonDetails pokemonDetails) = _PokemonDelete;
}
