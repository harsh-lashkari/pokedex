part of 'pokemon_bloc.dart';

@freezed
abstract class PokemonState with _$PokemonState {
  const factory PokemonState({
    @required List<Pokemon> pokemon,
    @required Option<Either<PokemonFailure, Unit>> failureOrSuccess,
    @required bool isFetching,
    @required int offset,
  }) = _PokemonState;

  factory PokemonState.initial() => PokemonState(
        pokemon: [],
        failureOrSuccess: none(),
        isFetching: false,
        offset: 0,
      );
}
