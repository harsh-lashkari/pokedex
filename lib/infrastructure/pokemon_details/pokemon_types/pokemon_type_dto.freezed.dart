// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonTypeDTO _$PokemonTypeDTOFromJson(Map<String, dynamic> json) {
  return _PokemonTypeDTO.fromJson(json);
}

/// @nodoc
class _$PokemonTypeDTOTearOff {
  const _$PokemonTypeDTOTearOff();

// ignore: unused_element
  _PokemonTypeDTO call({@required @JsonKey(name: 'type') TypeDTO type}) {
    return _PokemonTypeDTO(
      type: type,
    );
  }

// ignore: unused_element
  PokemonTypeDTO fromJson(Map<String, Object> json) {
    return PokemonTypeDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PokemonTypeDTO = _$PokemonTypeDTOTearOff();

/// @nodoc
mixin _$PokemonTypeDTO {
  @JsonKey(name: 'type')
  TypeDTO get type;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PokemonTypeDTOCopyWith<PokemonTypeDTO> get copyWith;
}

/// @nodoc
abstract class $PokemonTypeDTOCopyWith<$Res> {
  factory $PokemonTypeDTOCopyWith(
          PokemonTypeDTO value, $Res Function(PokemonTypeDTO) then) =
      _$PokemonTypeDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'type') TypeDTO type});

  $TypeDTOCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeDTOCopyWithImpl<$Res>
    implements $PokemonTypeDTOCopyWith<$Res> {
  _$PokemonTypeDTOCopyWithImpl(this._value, this._then);

  final PokemonTypeDTO _value;
  // ignore: unused_field
  final $Res Function(PokemonTypeDTO) _then;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as TypeDTO,
    ));
  }

  @override
  $TypeDTOCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $TypeDTOCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonTypeDTOCopyWith<$Res>
    implements $PokemonTypeDTOCopyWith<$Res> {
  factory _$PokemonTypeDTOCopyWith(
          _PokemonTypeDTO value, $Res Function(_PokemonTypeDTO) then) =
      __$PokemonTypeDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'type') TypeDTO type});

  @override
  $TypeDTOCopyWith<$Res> get type;
}

/// @nodoc
class __$PokemonTypeDTOCopyWithImpl<$Res>
    extends _$PokemonTypeDTOCopyWithImpl<$Res>
    implements _$PokemonTypeDTOCopyWith<$Res> {
  __$PokemonTypeDTOCopyWithImpl(
      _PokemonTypeDTO _value, $Res Function(_PokemonTypeDTO) _then)
      : super(_value, (v) => _then(v as _PokemonTypeDTO));

  @override
  _PokemonTypeDTO get _value => super._value as _PokemonTypeDTO;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(_PokemonTypeDTO(
      type: type == freezed ? _value.type : type as TypeDTO,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PokemonTypeDTO extends _PokemonTypeDTO {
  const _$_PokemonTypeDTO({@required @JsonKey(name: 'type') this.type})
      : assert(type != null),
        super._();

  factory _$_PokemonTypeDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonTypeDTOFromJson(json);

  @override
  @JsonKey(name: 'type')
  final TypeDTO type;

  @override
  String toString() {
    return 'PokemonTypeDTO(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonTypeDTO &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$PokemonTypeDTOCopyWith<_PokemonTypeDTO> get copyWith =>
      __$PokemonTypeDTOCopyWithImpl<_PokemonTypeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonTypeDTOToJson(this);
  }
}

abstract class _PokemonTypeDTO extends PokemonTypeDTO {
  const _PokemonTypeDTO._() : super._();
  const factory _PokemonTypeDTO(
      {@required @JsonKey(name: 'type') TypeDTO type}) = _$_PokemonTypeDTO;

  factory _PokemonTypeDTO.fromJson(Map<String, dynamic> json) =
      _$_PokemonTypeDTO.fromJson;

  @override
  @JsonKey(name: 'type')
  TypeDTO get type;
  @override
  @JsonKey(ignore: true)
  _$PokemonTypeDTOCopyWith<_PokemonTypeDTO> get copyWith;
}

TypeDTO _$TypeDTOFromJson(Map<String, dynamic> json) {
  return _TypeDTO.fromJson(json);
}

/// @nodoc
class _$TypeDTOTearOff {
  const _$TypeDTOTearOff();

// ignore: unused_element
  _TypeDTO call({@required @JsonKey(name: 'name') String name}) {
    return _TypeDTO(
      name: name,
    );
  }

// ignore: unused_element
  TypeDTO fromJson(Map<String, Object> json) {
    return TypeDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TypeDTO = _$TypeDTOTearOff();

/// @nodoc
mixin _$TypeDTO {
  @JsonKey(name: 'name')
  String get name;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TypeDTOCopyWith<TypeDTO> get copyWith;
}

/// @nodoc
abstract class $TypeDTOCopyWith<$Res> {
  factory $TypeDTOCopyWith(TypeDTO value, $Res Function(TypeDTO) then) =
      _$TypeDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$TypeDTOCopyWithImpl<$Res> implements $TypeDTOCopyWith<$Res> {
  _$TypeDTOCopyWithImpl(this._value, this._then);

  final TypeDTO _value;
  // ignore: unused_field
  final $Res Function(TypeDTO) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$TypeDTOCopyWith<$Res> implements $TypeDTOCopyWith<$Res> {
  factory _$TypeDTOCopyWith(_TypeDTO value, $Res Function(_TypeDTO) then) =
      __$TypeDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$TypeDTOCopyWithImpl<$Res> extends _$TypeDTOCopyWithImpl<$Res>
    implements _$TypeDTOCopyWith<$Res> {
  __$TypeDTOCopyWithImpl(_TypeDTO _value, $Res Function(_TypeDTO) _then)
      : super(_value, (v) => _then(v as _TypeDTO));

  @override
  _TypeDTO get _value => super._value as _TypeDTO;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_TypeDTO(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TypeDTO extends _TypeDTO {
  const _$_TypeDTO({@required @JsonKey(name: 'name') this.name})
      : assert(name != null),
        super._();

  factory _$_TypeDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_TypeDTOFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'TypeDTO(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TypeDTO &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$TypeDTOCopyWith<_TypeDTO> get copyWith =>
      __$TypeDTOCopyWithImpl<_TypeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TypeDTOToJson(this);
  }
}

abstract class _TypeDTO extends TypeDTO {
  const _TypeDTO._() : super._();
  const factory _TypeDTO({@required @JsonKey(name: 'name') String name}) =
      _$_TypeDTO;

  factory _TypeDTO.fromJson(Map<String, dynamic> json) = _$_TypeDTO.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$TypeDTOCopyWith<_TypeDTO> get copyWith;
}
