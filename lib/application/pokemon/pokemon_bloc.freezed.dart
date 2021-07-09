// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PokemonEventTearOff {
  const _$PokemonEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }
}

/// @nodoc
// ignore: unused_element
const $PokemonEvent = _$PokemonEventTearOff();

/// @nodoc
mixin _$PokemonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PokemonEventCopyWith<$Res> {
  factory $PokemonEventCopyWith(
          PokemonEvent value, $Res Function(PokemonEvent) then) =
      _$PokemonEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PokemonEventCopyWithImpl<$Res> implements $PokemonEventCopyWith<$Res> {
  _$PokemonEventCopyWithImpl(this._value, this._then);

  final PokemonEvent _value;
  // ignore: unused_field
  final $Res Function(PokemonEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$PokemonEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'PokemonEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
  }) {
    assert(started != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
  }) {
    assert(started != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PokemonEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$PokemonStateTearOff {
  const _$PokemonStateTearOff();

// ignore: unused_element
  _PokemonState call(
      {@required List<Pokemon> pokemon,
      @required Option<Either<PokemonFailure, Unit>> failureOrSuccess,
      @required bool isFetching,
      @required int offset}) {
    return _PokemonState(
      pokemon: pokemon,
      failureOrSuccess: failureOrSuccess,
      isFetching: isFetching,
      offset: offset,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PokemonState = _$PokemonStateTearOff();

/// @nodoc
mixin _$PokemonState {
  List<Pokemon> get pokemon;
  Option<Either<PokemonFailure, Unit>> get failureOrSuccess;
  bool get isFetching;
  int get offset;

  @JsonKey(ignore: true)
  $PokemonStateCopyWith<PokemonState> get copyWith;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
          PokemonState value, $Res Function(PokemonState) then) =
      _$PokemonStateCopyWithImpl<$Res>;
  $Res call(
      {List<Pokemon> pokemon,
      Option<Either<PokemonFailure, Unit>> failureOrSuccess,
      bool isFetching,
      int offset});
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res> implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  final PokemonState _value;
  // ignore: unused_field
  final $Res Function(PokemonState) _then;

  @override
  $Res call({
    Object pokemon = freezed,
    Object failureOrSuccess = freezed,
    Object isFetching = freezed,
    Object offset = freezed,
  }) {
    return _then(_value.copyWith(
      pokemon: pokemon == freezed ? _value.pokemon : pokemon as List<Pokemon>,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess as Option<Either<PokemonFailure, Unit>>,
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      offset: offset == freezed ? _value.offset : offset as int,
    ));
  }
}

/// @nodoc
abstract class _$PokemonStateCopyWith<$Res>
    implements $PokemonStateCopyWith<$Res> {
  factory _$PokemonStateCopyWith(
          _PokemonState value, $Res Function(_PokemonState) then) =
      __$PokemonStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Pokemon> pokemon,
      Option<Either<PokemonFailure, Unit>> failureOrSuccess,
      bool isFetching,
      int offset});
}

/// @nodoc
class __$PokemonStateCopyWithImpl<$Res> extends _$PokemonStateCopyWithImpl<$Res>
    implements _$PokemonStateCopyWith<$Res> {
  __$PokemonStateCopyWithImpl(
      _PokemonState _value, $Res Function(_PokemonState) _then)
      : super(_value, (v) => _then(v as _PokemonState));

  @override
  _PokemonState get _value => super._value as _PokemonState;

  @override
  $Res call({
    Object pokemon = freezed,
    Object failureOrSuccess = freezed,
    Object isFetching = freezed,
    Object offset = freezed,
  }) {
    return _then(_PokemonState(
      pokemon: pokemon == freezed ? _value.pokemon : pokemon as List<Pokemon>,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess as Option<Either<PokemonFailure, Unit>>,
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      offset: offset == freezed ? _value.offset : offset as int,
    ));
  }
}

/// @nodoc
class _$_PokemonState implements _PokemonState {
  const _$_PokemonState(
      {@required this.pokemon,
      @required this.failureOrSuccess,
      @required this.isFetching,
      @required this.offset})
      : assert(pokemon != null),
        assert(failureOrSuccess != null),
        assert(isFetching != null),
        assert(offset != null);

  @override
  final List<Pokemon> pokemon;
  @override
  final Option<Either<PokemonFailure, Unit>> failureOrSuccess;
  @override
  final bool isFetching;
  @override
  final int offset;

  @override
  String toString() {
    return 'PokemonState(pokemon: $pokemon, failureOrSuccess: $failureOrSuccess, isFetching: $isFetching, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonState &&
            (identical(other.pokemon, pokemon) ||
                const DeepCollectionEquality()
                    .equals(other.pokemon, pokemon)) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSuccess, failureOrSuccess)) &&
            (identical(other.isFetching, isFetching) ||
                const DeepCollectionEquality()
                    .equals(other.isFetching, isFetching)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pokemon) ^
      const DeepCollectionEquality().hash(failureOrSuccess) ^
      const DeepCollectionEquality().hash(isFetching) ^
      const DeepCollectionEquality().hash(offset);

  @JsonKey(ignore: true)
  @override
  _$PokemonStateCopyWith<_PokemonState> get copyWith =>
      __$PokemonStateCopyWithImpl<_PokemonState>(this, _$identity);
}

abstract class _PokemonState implements PokemonState {
  const factory _PokemonState(
      {@required List<Pokemon> pokemon,
      @required Option<Either<PokemonFailure, Unit>> failureOrSuccess,
      @required bool isFetching,
      @required int offset}) = _$_PokemonState;

  @override
  List<Pokemon> get pokemon;
  @override
  Option<Either<PokemonFailure, Unit>> get failureOrSuccess;
  @override
  bool get isFetching;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$PokemonStateCopyWith<_PokemonState> get copyWith;
}
