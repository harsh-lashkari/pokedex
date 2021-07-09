import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/pokemon_details/pokemon_types/pokemon_types.dart';

part 'pokemon_type_dto.freezed.dart';
part 'pokemon_type_dto.g.dart';

@freezed
abstract class PokemonTypeDTO with _$PokemonTypeDTO {
  const PokemonTypeDTO._();
  const factory PokemonTypeDTO({
    @required @JsonKey(name: 'type') TypeDTO type,
  }) = _PokemonTypeDTO;

  PokemonType toDomain() {
    return PokemonType(
      type: TypeDTO(name: type.name),
    );
  }

  factory PokemonTypeDTO.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeDTOFromJson(json);
}

@freezed
abstract class TypeDTO with _$TypeDTO {
  const TypeDTO._();
  const factory TypeDTO({
    @required @JsonKey(name: 'name') String name,
  }) = _TypeDTO;

  factory TypeDTO.empty() => const TypeDTO(
        name: "",
      );

  factory TypeDTO.fromJson(Map<String, dynamic> json) =>
      _$TypeDTOFromJson(json);
}
