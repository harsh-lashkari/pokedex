// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PokemonDetailsTearOff {
  const _$PokemonDetailsTearOff();

// ignore: unused_element
  _Pokemon call(
      {@required PokemonID id,
      @required PokemonName name,
      @required BaseExperience baseExperience,
      @required PokemonHeight pokemonHeight,
      @required PokemonWeight pokemonWeight}) {
    return _Pokemon(
      id: id,
      name: name,
      baseExperience: baseExperience,
      pokemonHeight: pokemonHeight,
      pokemonWeight: pokemonWeight,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PokemonDetails = _$PokemonDetailsTearOff();

/// @nodoc
mixin _$PokemonDetails {
  PokemonID get id;
  PokemonName get name;
  BaseExperience get baseExperience;
  PokemonHeight get pokemonHeight;
  PokemonWeight get pokemonWeight;

  @JsonKey(ignore: true)
  $PokemonDetailsCopyWith<PokemonDetails> get copyWith;
}

/// @nodoc
abstract class $PokemonDetailsCopyWith<$Res> {
  factory $PokemonDetailsCopyWith(
          PokemonDetails value, $Res Function(PokemonDetails) then) =
      _$PokemonDetailsCopyWithImpl<$Res>;
  $Res call(
      {PokemonID id,
      PokemonName name,
      BaseExperience baseExperience,
      PokemonHeight pokemonHeight,
      PokemonWeight pokemonWeight});
}

/// @nodoc
class _$PokemonDetailsCopyWithImpl<$Res>
    implements $PokemonDetailsCopyWith<$Res> {
  _$PokemonDetailsCopyWithImpl(this._value, this._then);

  final PokemonDetails _value;
  // ignore: unused_field
  final $Res Function(PokemonDetails) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object baseExperience = freezed,
    Object pokemonHeight = freezed,
    Object pokemonWeight = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as PokemonID,
      name: name == freezed ? _value.name : name as PokemonName,
      baseExperience: baseExperience == freezed
          ? _value.baseExperience
          : baseExperience as BaseExperience,
      pokemonHeight: pokemonHeight == freezed
          ? _value.pokemonHeight
          : pokemonHeight as PokemonHeight,
      pokemonWeight: pokemonWeight == freezed
          ? _value.pokemonWeight
          : pokemonWeight as PokemonWeight,
    ));
  }
}

/// @nodoc
abstract class _$PokemonCopyWith<$Res>
    implements $PokemonDetailsCopyWith<$Res> {
  factory _$PokemonCopyWith(_Pokemon value, $Res Function(_Pokemon) then) =
      __$PokemonCopyWithImpl<$Res>;
  @override
  $Res call(
      {PokemonID id,
      PokemonName name,
      BaseExperience baseExperience,
      PokemonHeight pokemonHeight,
      PokemonWeight pokemonWeight});
}

/// @nodoc
class __$PokemonCopyWithImpl<$Res> extends _$PokemonDetailsCopyWithImpl<$Res>
    implements _$PokemonCopyWith<$Res> {
  __$PokemonCopyWithImpl(_Pokemon _value, $Res Function(_Pokemon) _then)
      : super(_value, (v) => _then(v as _Pokemon));

  @override
  _Pokemon get _value => super._value as _Pokemon;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object baseExperience = freezed,
    Object pokemonHeight = freezed,
    Object pokemonWeight = freezed,
  }) {
    return _then(_Pokemon(
      id: id == freezed ? _value.id : id as PokemonID,
      name: name == freezed ? _value.name : name as PokemonName,
      baseExperience: baseExperience == freezed
          ? _value.baseExperience
          : baseExperience as BaseExperience,
      pokemonHeight: pokemonHeight == freezed
          ? _value.pokemonHeight
          : pokemonHeight as PokemonHeight,
      pokemonWeight: pokemonWeight == freezed
          ? _value.pokemonWeight
          : pokemonWeight as PokemonWeight,
    ));
  }
}

/// @nodoc
class _$_Pokemon extends _Pokemon {
  const _$_Pokemon(
      {@required this.id,
      @required this.name,
      @required this.baseExperience,
      @required this.pokemonHeight,
      @required this.pokemonWeight})
      : assert(id != null),
        assert(name != null),
        assert(baseExperience != null),
        assert(pokemonHeight != null),
        assert(pokemonWeight != null),
        super._();

  @override
  final PokemonID id;
  @override
  final PokemonName name;
  @override
  final BaseExperience baseExperience;
  @override
  final PokemonHeight pokemonHeight;
  @override
  final PokemonWeight pokemonWeight;

  @override
  String toString() {
    return 'PokemonDetails(id: $id, name: $name, baseExperience: $baseExperience, pokemonHeight: $pokemonHeight, pokemonWeight: $pokemonWeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pokemon &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.baseExperience, baseExperience) ||
                const DeepCollectionEquality()
                    .equals(other.baseExperience, baseExperience)) &&
            (identical(other.pokemonHeight, pokemonHeight) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonHeight, pokemonHeight)) &&
            (identical(other.pokemonWeight, pokemonWeight) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonWeight, pokemonWeight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(baseExperience) ^
      const DeepCollectionEquality().hash(pokemonHeight) ^
      const DeepCollectionEquality().hash(pokemonWeight);

  @JsonKey(ignore: true)
  @override
  _$PokemonCopyWith<_Pokemon> get copyWith =>
      __$PokemonCopyWithImpl<_Pokemon>(this, _$identity);
}

abstract class _Pokemon extends PokemonDetails {
  const _Pokemon._() : super._();
  const factory _Pokemon(
      {@required PokemonID id,
      @required PokemonName name,
      @required BaseExperience baseExperience,
      @required PokemonHeight pokemonHeight,
      @required PokemonWeight pokemonWeight}) = _$_Pokemon;

  @override
  PokemonID get id;
  @override
  PokemonName get name;
  @override
  BaseExperience get baseExperience;
  @override
  PokemonHeight get pokemonHeight;
  @override
  PokemonWeight get pokemonWeight;
  @override
  @JsonKey(ignore: true)
  _$PokemonCopyWith<_Pokemon> get copyWith;
}
