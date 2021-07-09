// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonDetailsDTO _$PokemonDetailsDTOFromJson(Map<String, dynamic> json) {
  return _PokemonDetailsDTO.fromJson(json);
}

/// @nodoc
class _$PokemonDetailsDTOTearOff {
  const _$PokemonDetailsDTOTearOff();

// ignore: unused_element
  _PokemonDetailsDTO call(
      {@required @JsonKey(name: 'id') int pokemonID,
      @required @JsonKey(name: 'name') String pokemonName,
      @required @JsonKey(name: 'base_experience') int baseExperience,
      @required @JsonKey(name: 'height') int pokemonHeight,
      @required @JsonKey(name: 'weight') int pokemonWeight,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _PokemonDetailsDTO(
      pokemonID: pokemonID,
      pokemonName: pokemonName,
      baseExperience: baseExperience,
      pokemonHeight: pokemonHeight,
      pokemonWeight: pokemonWeight,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  PokemonDetailsDTO fromJson(Map<String, Object> json) {
    return PokemonDetailsDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PokemonDetailsDTO = _$PokemonDetailsDTOTearOff();

/// @nodoc
mixin _$PokemonDetailsDTO {
  @JsonKey(name: 'id')
  int get pokemonID;
  @JsonKey(name: 'name')
  String get pokemonName;
  @JsonKey(name: 'base_experience')
  int get baseExperience;
  @JsonKey(name: 'height')
  int get pokemonHeight;
  @JsonKey(name: 'weight')
  int get pokemonWeight;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PokemonDetailsDTOCopyWith<PokemonDetailsDTO> get copyWith;
}

/// @nodoc
abstract class $PokemonDetailsDTOCopyWith<$Res> {
  factory $PokemonDetailsDTOCopyWith(
          PokemonDetailsDTO value, $Res Function(PokemonDetailsDTO) then) =
      _$PokemonDetailsDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int pokemonID,
      @JsonKey(name: 'name') String pokemonName,
      @JsonKey(name: 'base_experience') int baseExperience,
      @JsonKey(name: 'height') int pokemonHeight,
      @JsonKey(name: 'weight') int pokemonWeight,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$PokemonDetailsDTOCopyWithImpl<$Res>
    implements $PokemonDetailsDTOCopyWith<$Res> {
  _$PokemonDetailsDTOCopyWithImpl(this._value, this._then);

  final PokemonDetailsDTO _value;
  // ignore: unused_field
  final $Res Function(PokemonDetailsDTO) _then;

  @override
  $Res call({
    Object pokemonID = freezed,
    Object pokemonName = freezed,
    Object baseExperience = freezed,
    Object pokemonHeight = freezed,
    Object pokemonWeight = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      pokemonID: pokemonID == freezed ? _value.pokemonID : pokemonID as int,
      pokemonName:
          pokemonName == freezed ? _value.pokemonName : pokemonName as String,
      baseExperience: baseExperience == freezed
          ? _value.baseExperience
          : baseExperience as int,
      pokemonHeight: pokemonHeight == freezed
          ? _value.pokemonHeight
          : pokemonHeight as int,
      pokemonWeight: pokemonWeight == freezed
          ? _value.pokemonWeight
          : pokemonWeight as int,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$PokemonDetailsDTOCopyWith<$Res>
    implements $PokemonDetailsDTOCopyWith<$Res> {
  factory _$PokemonDetailsDTOCopyWith(
          _PokemonDetailsDTO value, $Res Function(_PokemonDetailsDTO) then) =
      __$PokemonDetailsDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int pokemonID,
      @JsonKey(name: 'name') String pokemonName,
      @JsonKey(name: 'base_experience') int baseExperience,
      @JsonKey(name: 'height') int pokemonHeight,
      @JsonKey(name: 'weight') int pokemonWeight,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$PokemonDetailsDTOCopyWithImpl<$Res>
    extends _$PokemonDetailsDTOCopyWithImpl<$Res>
    implements _$PokemonDetailsDTOCopyWith<$Res> {
  __$PokemonDetailsDTOCopyWithImpl(
      _PokemonDetailsDTO _value, $Res Function(_PokemonDetailsDTO) _then)
      : super(_value, (v) => _then(v as _PokemonDetailsDTO));

  @override
  _PokemonDetailsDTO get _value => super._value as _PokemonDetailsDTO;

  @override
  $Res call({
    Object pokemonID = freezed,
    Object pokemonName = freezed,
    Object baseExperience = freezed,
    Object pokemonHeight = freezed,
    Object pokemonWeight = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_PokemonDetailsDTO(
      pokemonID: pokemonID == freezed ? _value.pokemonID : pokemonID as int,
      pokemonName:
          pokemonName == freezed ? _value.pokemonName : pokemonName as String,
      baseExperience: baseExperience == freezed
          ? _value.baseExperience
          : baseExperience as int,
      pokemonHeight: pokemonHeight == freezed
          ? _value.pokemonHeight
          : pokemonHeight as int,
      pokemonWeight: pokemonWeight == freezed
          ? _value.pokemonWeight
          : pokemonWeight as int,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PokemonDetailsDTO extends _PokemonDetailsDTO {
  const _$_PokemonDetailsDTO(
      {@required @JsonKey(name: 'id') this.pokemonID,
      @required @JsonKey(name: 'name') this.pokemonName,
      @required @JsonKey(name: 'base_experience') this.baseExperience,
      @required @JsonKey(name: 'height') this.pokemonHeight,
      @required @JsonKey(name: 'weight') this.pokemonWeight,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(pokemonID != null),
        assert(pokemonName != null),
        assert(baseExperience != null),
        assert(pokemonHeight != null),
        assert(pokemonWeight != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_PokemonDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonDetailsDTOFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int pokemonID;
  @override
  @JsonKey(name: 'name')
  final String pokemonName;
  @override
  @JsonKey(name: 'base_experience')
  final int baseExperience;
  @override
  @JsonKey(name: 'height')
  final int pokemonHeight;
  @override
  @JsonKey(name: 'weight')
  final int pokemonWeight;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'PokemonDetailsDTO(pokemonID: $pokemonID, pokemonName: $pokemonName, baseExperience: $baseExperience, pokemonHeight: $pokemonHeight, pokemonWeight: $pokemonWeight, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonDetailsDTO &&
            (identical(other.pokemonID, pokemonID) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonID, pokemonID)) &&
            (identical(other.pokemonName, pokemonName) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonName, pokemonName)) &&
            (identical(other.baseExperience, baseExperience) ||
                const DeepCollectionEquality()
                    .equals(other.baseExperience, baseExperience)) &&
            (identical(other.pokemonHeight, pokemonHeight) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonHeight, pokemonHeight)) &&
            (identical(other.pokemonWeight, pokemonWeight) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonWeight, pokemonWeight)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pokemonID) ^
      const DeepCollectionEquality().hash(pokemonName) ^
      const DeepCollectionEquality().hash(baseExperience) ^
      const DeepCollectionEquality().hash(pokemonHeight) ^
      const DeepCollectionEquality().hash(pokemonWeight) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  _$PokemonDetailsDTOCopyWith<_PokemonDetailsDTO> get copyWith =>
      __$PokemonDetailsDTOCopyWithImpl<_PokemonDetailsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonDetailsDTOToJson(this);
  }
}

abstract class _PokemonDetailsDTO extends PokemonDetailsDTO {
  const _PokemonDetailsDTO._() : super._();
  const factory _PokemonDetailsDTO(
          {@required @JsonKey(name: 'id') int pokemonID,
          @required @JsonKey(name: 'name') String pokemonName,
          @required @JsonKey(name: 'base_experience') int baseExperience,
          @required @JsonKey(name: 'height') int pokemonHeight,
          @required @JsonKey(name: 'weight') int pokemonWeight,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_PokemonDetailsDTO;

  factory _PokemonDetailsDTO.fromJson(Map<String, dynamic> json) =
      _$_PokemonDetailsDTO.fromJson;

  @override
  @JsonKey(name: 'id')
  int get pokemonID;
  @override
  @JsonKey(name: 'name')
  String get pokemonName;
  @override
  @JsonKey(name: 'base_experience')
  int get baseExperience;
  @override
  @JsonKey(name: 'height')
  int get pokemonHeight;
  @override
  @JsonKey(name: 'weight')
  int get pokemonWeight;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$PokemonDetailsDTOCopyWith<_PokemonDetailsDTO> get copyWith;
}
