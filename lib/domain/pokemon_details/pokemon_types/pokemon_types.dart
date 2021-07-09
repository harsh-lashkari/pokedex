import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/infrastructure/pokemon_details/pokemon_types/pokemon_type_dto.dart';

part 'pokemon_types.freezed.dart';

@freezed
abstract class PokemonType with _$PokemonType {
  const PokemonType._();
  const factory PokemonType({
    @required TypeDTO type,
  }) = _PokemonType;

  factory PokemonType.empty() => PokemonType(
        type: TypeDTO.empty(),
      );
}
