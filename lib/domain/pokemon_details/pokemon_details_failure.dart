import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_details_failure.freezed.dart';

@freezed
abstract class PokemonDetailsFailure with _$PokemonDetailsFailure {
  const factory PokemonDetailsFailure.unexpected() = _Unexpected;
  const factory PokemonDetailsFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory PokemonDetailsFailure.unableToUpdate() = _UnableToUpdate;
}
