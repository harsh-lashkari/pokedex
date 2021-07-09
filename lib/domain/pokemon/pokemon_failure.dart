import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_failure.freezed.dart';

@freezed
abstract class PokemonFailure with _$PokemonFailure {
  const factory PokemonFailure.unexpected() = _Unexpected;
  const factory PokemonFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory PokemonFailure.unableToUpdate() = _UnableToUpdate;
}
