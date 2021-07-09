part of 'pokemon_details_bloc.dart';

@freezed
abstract class PokemonDetailsState with _$PokemonDetailsState {
  const factory PokemonDetailsState({
    @required PokemonDetails pokemonDetails,
    @required List<PokemonDetails> listPokemonDetails,
    @required List<PokemonType> pokemonTypes,
    @required Option<Either<PokemonDetailsFailure, Unit>> failureOrSuccess,
    @required bool isFetching,
    @required bool addingOrDeleting,
  }) = _PokemonDetailsState;

  factory PokemonDetailsState.initial() => PokemonDetailsState(
        listPokemonDetails: [],
        pokemonTypes: [],
        pokemonDetails: PokemonDetails.empty(),
        failureOrSuccess: none(),
        isFetching: false,
        addingOrDeleting: false,
      );
}
