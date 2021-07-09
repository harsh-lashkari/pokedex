// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PokemonTearOff {
  const _$PokemonTearOff();

// ignore: unused_element
  _Pokemon call(
      {@required PokemonName pokemonName, @required PokemonURL pokemonURL}) {
    return _Pokemon(
      pokemonName: pokemonName,
      pokemonURL: pokemonURL,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Pokemon = _$PokemonTearOff();

/// @nodoc
mixin _$Pokemon {
// UniqueId id,
  PokemonName get pokemonName;
  PokemonURL get pokemonURL;

  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res>;
  $Res call({PokemonName pokemonName, PokemonURL pokemonURL});
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res> implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  final Pokemon _value;
  // ignore: unused_field
  final $Res Function(Pokemon) _then;

  @override
  $Res call({
    Object pokemonName = freezed,
    Object pokemonURL = freezed,
  }) {
    return _then(_value.copyWith(
      pokemonName: pokemonName == freezed
          ? _value.pokemonName
          : pokemonName as PokemonName,
      pokemonURL:
          pokemonURL == freezed ? _value.pokemonURL : pokemonURL as PokemonURL,
    ));
  }
}

/// @nodoc
abstract class _$PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$PokemonCopyWith(_Pokemon value, $Res Function(_Pokemon) then) =
      __$PokemonCopyWithImpl<$Res>;
  @override
  $Res call({PokemonName pokemonName, PokemonURL pokemonURL});
}

/// @nodoc
class __$PokemonCopyWithImpl<$Res> extends _$PokemonCopyWithImpl<$Res>
    implements _$PokemonCopyWith<$Res> {
  __$PokemonCopyWithImpl(_Pokemon _value, $Res Function(_Pokemon) _then)
      : super(_value, (v) => _then(v as _Pokemon));

  @override
  _Pokemon get _value => super._value as _Pokemon;

  @override
  $Res call({
    Object pokemonName = freezed,
    Object pokemonURL = freezed,
  }) {
    return _then(_Pokemon(
      pokemonName: pokemonName == freezed
          ? _value.pokemonName
          : pokemonName as PokemonName,
      pokemonURL:
          pokemonURL == freezed ? _value.pokemonURL : pokemonURL as PokemonURL,
    ));
  }
}

/// @nodoc
class _$_Pokemon extends _Pokemon {
  const _$_Pokemon({@required this.pokemonName, @required this.pokemonURL})
      : assert(pokemonName != null),
        assert(pokemonURL != null),
        super._();

  @override // UniqueId id,
  final PokemonName pokemonName;
  @override
  final PokemonURL pokemonURL;

  @override
  String toString() {
    return 'Pokemon(pokemonName: $pokemonName, pokemonURL: $pokemonURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pokemon &&
            (identical(other.pokemonName, pokemonName) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonName, pokemonName)) &&
            (identical(other.pokemonURL, pokemonURL) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonURL, pokemonURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pokemonName) ^
      const DeepCollectionEquality().hash(pokemonURL);

  @JsonKey(ignore: true)
  @override
  _$PokemonCopyWith<_Pokemon> get copyWith =>
      __$PokemonCopyWithImpl<_Pokemon>(this, _$identity);
}

abstract class _Pokemon extends Pokemon {
  const _Pokemon._() : super._();
  const factory _Pokemon(
      {@required PokemonName pokemonName,
      @required PokemonURL pokemonURL}) = _$_Pokemon;

  @override // UniqueId id,
  PokemonName get pokemonName;
  @override
  PokemonURL get pokemonURL;
  @override
  @JsonKey(ignore: true)
  _$PokemonCopyWith<_Pokemon> get copyWith;
}
