// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonDTO _$PokemonDTOFromJson(Map<String, dynamic> json) {
  return _PokemonDTO.fromJson(json);
}

/// @nodoc
class _$PokemonDTOTearOff {
  const _$PokemonDTOTearOff();

// ignore: unused_element
  _PokemonDTO call(
      {@required @JsonKey(name: 'name') String namePath,
      @required @JsonKey(name: 'url') String url}) {
    return _PokemonDTO(
      namePath: namePath,
      url: url,
    );
  }

// ignore: unused_element
  PokemonDTO fromJson(Map<String, Object> json) {
    return PokemonDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PokemonDTO = _$PokemonDTOTearOff();

/// @nodoc
mixin _$PokemonDTO {
  @JsonKey(name: 'name')
  String get namePath;
  @JsonKey(name: 'url')
  String get url;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PokemonDTOCopyWith<PokemonDTO> get copyWith;
}

/// @nodoc
abstract class $PokemonDTOCopyWith<$Res> {
  factory $PokemonDTOCopyWith(
          PokemonDTO value, $Res Function(PokemonDTO) then) =
      _$PokemonDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String namePath,
      @JsonKey(name: 'url') String url});
}

/// @nodoc
class _$PokemonDTOCopyWithImpl<$Res> implements $PokemonDTOCopyWith<$Res> {
  _$PokemonDTOCopyWithImpl(this._value, this._then);

  final PokemonDTO _value;
  // ignore: unused_field
  final $Res Function(PokemonDTO) _then;

  @override
  $Res call({
    Object namePath = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      namePath: namePath == freezed ? _value.namePath : namePath as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
abstract class _$PokemonDTOCopyWith<$Res> implements $PokemonDTOCopyWith<$Res> {
  factory _$PokemonDTOCopyWith(
          _PokemonDTO value, $Res Function(_PokemonDTO) then) =
      __$PokemonDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String namePath,
      @JsonKey(name: 'url') String url});
}

/// @nodoc
class __$PokemonDTOCopyWithImpl<$Res> extends _$PokemonDTOCopyWithImpl<$Res>
    implements _$PokemonDTOCopyWith<$Res> {
  __$PokemonDTOCopyWithImpl(
      _PokemonDTO _value, $Res Function(_PokemonDTO) _then)
      : super(_value, (v) => _then(v as _PokemonDTO));

  @override
  _PokemonDTO get _value => super._value as _PokemonDTO;

  @override
  $Res call({
    Object namePath = freezed,
    Object url = freezed,
  }) {
    return _then(_PokemonDTO(
      namePath: namePath == freezed ? _value.namePath : namePath as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PokemonDTO extends _PokemonDTO {
  const _$_PokemonDTO(
      {@required @JsonKey(name: 'name') this.namePath,
      @required @JsonKey(name: 'url') this.url})
      : assert(namePath != null),
        assert(url != null),
        super._();

  factory _$_PokemonDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonDTOFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String namePath;
  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  String toString() {
    return 'PokemonDTO(namePath: $namePath, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonDTO &&
            (identical(other.namePath, namePath) ||
                const DeepCollectionEquality()
                    .equals(other.namePath, namePath)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(namePath) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$PokemonDTOCopyWith<_PokemonDTO> get copyWith =>
      __$PokemonDTOCopyWithImpl<_PokemonDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonDTOToJson(this);
  }
}

abstract class _PokemonDTO extends PokemonDTO {
  const _PokemonDTO._() : super._();
  const factory _PokemonDTO(
      {@required @JsonKey(name: 'name') String namePath,
      @required @JsonKey(name: 'url') String url}) = _$_PokemonDTO;

  factory _PokemonDTO.fromJson(Map<String, dynamic> json) =
      _$_PokemonDTO.fromJson;

  @override
  @JsonKey(name: 'name')
  String get namePath;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$PokemonDTOCopyWith<_PokemonDTO> get copyWith;
}
