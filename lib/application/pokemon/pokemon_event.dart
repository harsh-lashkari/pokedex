part of 'pokemon_bloc.dart';

@freezed
abstract class PokemonEvent with _$PokemonEvent {
  const factory PokemonEvent.started() = _Started;
}