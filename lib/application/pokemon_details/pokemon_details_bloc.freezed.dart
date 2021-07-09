// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PokemonDetailsEventTearOff {
  const _$PokemonDetailsEventTearOff();

// ignore: unused_element
  _Started started(String url) {
    return _Started(
      url,
    );
  }

// ignore: unused_element
  _DetailsFetched detailsFetched(
      Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails) {
    return _DetailsFetched(
      pokemonDetails,
    );
  }

// ignore: unused_element
  _TypesFetched typesFetched(
      Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes) {
    return _TypesFetched(
      pokemonTypes,
    );
  }

// ignore: unused_element
  _PokemonCreated pokemonCreated(PokemonDetails pokemonDetails) {
    return _PokemonCreated(
      pokemonDetails,
    );
  }

// ignore: unused_element
  _WatchUserPokemon watchUserPokemon() {
    return const _WatchUserPokemon();
  }

// ignore: unused_element
  StreamPokemonData streamPokemonData(
      Either<PokemonDetailsFailure, List<PokemonDetails>> failureOrPokemon) {
    return StreamPokemonData(
      failureOrPokemon,
    );
  }

// ignore: unused_element
  _PokemonDelete pokemonDelete(PokemonDetails pokemonDetails) {
    return _PokemonDelete(
      pokemonDetails,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PokemonDetailsEvent = _$PokemonDetailsEventTearOff();

/// @nodoc
mixin _$PokemonDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(String url),
    @required
        TResult detailsFetched(
            Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    @required
        TResult typesFetched(
            Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    @required TResult pokemonCreated(PokemonDetails pokemonDetails),
    @required TResult watchUserPokemon(),
    @required
        TResult streamPokemonData(
            Either<PokemonDetailsFailure, List<PokemonDetails>>
                failureOrPokemon),
    @required TResult pokemonDelete(PokemonDetails pokemonDetails),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(String url),
    TResult detailsFetched(
        Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    TResult typesFetched(
        Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    TResult pokemonCreated(PokemonDetails pokemonDetails),
    TResult watchUserPokemon(),
    TResult streamPokemonData(
        Either<PokemonDetailsFailure, List<PokemonDetails>> failureOrPokemon),
    TResult pokemonDelete(PokemonDetails pokemonDetails),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult detailsFetched(_DetailsFetched value),
    @required TResult typesFetched(_TypesFetched value),
    @required TResult pokemonCreated(_PokemonCreated value),
    @required TResult watchUserPokemon(_WatchUserPokemon value),
    @required TResult streamPokemonData(StreamPokemonData value),
    @required TResult pokemonDelete(_PokemonDelete value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult detailsFetched(_DetailsFetched value),
    TResult typesFetched(_TypesFetched value),
    TResult pokemonCreated(_PokemonCreated value),
    TResult watchUserPokemon(_WatchUserPokemon value),
    TResult streamPokemonData(StreamPokemonData value),
    TResult pokemonDelete(_PokemonDelete value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PokemonDetailsEventCopyWith<$Res> {
  factory $PokemonDetailsEventCopyWith(
          PokemonDetailsEvent value, $Res Function(PokemonDetailsEvent) then) =
      _$PokemonDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PokemonDetailsEventCopyWithImpl<$Res>
    implements $PokemonDetailsEventCopyWith<$Res> {
  _$PokemonDetailsEventCopyWithImpl(this._value, this._then);

  final PokemonDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(PokemonDetailsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$PokemonDetailsEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(_Started(
      url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started(this.url) : assert(url != null);

  @override
  final String url;

  @override
  String toString() {
    return 'PokemonDetailsEvent.started(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(String url),
    @required
        TResult detailsFetched(
            Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    @required
        TResult typesFetched(
            Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    @required TResult pokemonCreated(PokemonDetails pokemonDetails),
    @required TResult watchUserPokemon(),
    @required
        TResult streamPokemonData(
            Either<PokemonDetailsFailure, List<PokemonDetails>>
                failureOrPokemon),
    @required TResult pokemonDelete(PokemonDetails pokemonDetails),
  }) {
    assert(started != null);
    assert(detailsFetched != null);
    assert(typesFetched != null);
    assert(pokemonCreated != null);
    assert(watchUserPokemon != null);
    assert(streamPokemonData != null);
    assert(pokemonDelete != null);
    return started(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(String url),
    TResult detailsFetched(
        Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    TResult typesFetched(
        Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    TResult pokemonCreated(PokemonDetails pokemonDetails),
    TResult watchUserPokemon(),
    TResult streamPokemonData(
        Either<PokemonDetailsFailure, List<PokemonDetails>> failureOrPokemon),
    TResult pokemonDelete(PokemonDetails pokemonDetails),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult detailsFetched(_DetailsFetched value),
    @required TResult typesFetched(_TypesFetched value),
    @required TResult pokemonCreated(_PokemonCreated value),
    @required TResult watchUserPokemon(_WatchUserPokemon value),
    @required TResult streamPokemonData(StreamPokemonData value),
    @required TResult pokemonDelete(_PokemonDelete value),
  }) {
    assert(started != null);
    assert(detailsFetched != null);
    assert(typesFetched != null);
    assert(pokemonCreated != null);
    assert(watchUserPokemon != null);
    assert(streamPokemonData != null);
    assert(pokemonDelete != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult detailsFetched(_DetailsFetched value),
    TResult typesFetched(_TypesFetched value),
    TResult pokemonCreated(_PokemonCreated value),
    TResult watchUserPokemon(_WatchUserPokemon value),
    TResult streamPokemonData(StreamPokemonData value),
    TResult pokemonDelete(_PokemonDelete value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PokemonDetailsEvent {
  const factory _Started(String url) = _$_Started;

  String get url;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith;
}

/// @nodoc
abstract class _$DetailsFetchedCopyWith<$Res> {
  factory _$DetailsFetchedCopyWith(
          _DetailsFetched value, $Res Function(_DetailsFetched) then) =
      __$DetailsFetchedCopyWithImpl<$Res>;
  $Res call({Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails});
}

/// @nodoc
class __$DetailsFetchedCopyWithImpl<$Res>
    extends _$PokemonDetailsEventCopyWithImpl<$Res>
    implements _$DetailsFetchedCopyWith<$Res> {
  __$DetailsFetchedCopyWithImpl(
      _DetailsFetched _value, $Res Function(_DetailsFetched) _then)
      : super(_value, (v) => _then(v as _DetailsFetched));

  @override
  _DetailsFetched get _value => super._value as _DetailsFetched;

  @override
  $Res call({
    Object pokemonDetails = freezed,
  }) {
    return _then(_DetailsFetched(
      pokemonDetails == freezed
          ? _value.pokemonDetails
          : pokemonDetails as Either<PokemonDetailsFailure, PokemonDetails>,
    ));
  }
}

/// @nodoc
class _$_DetailsFetched implements _DetailsFetched {
  const _$_DetailsFetched(this.pokemonDetails) : assert(pokemonDetails != null);

  @override
  final Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails;

  @override
  String toString() {
    return 'PokemonDetailsEvent.detailsFetched(pokemonDetails: $pokemonDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailsFetched &&
            (identical(other.pokemonDetails, pokemonDetails) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonDetails, pokemonDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pokemonDetails);

  @JsonKey(ignore: true)
  @override
  _$DetailsFetchedCopyWith<_DetailsFetched> get copyWith =>
      __$DetailsFetchedCopyWithImpl<_DetailsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(String url),
    @required
        TResult detailsFetched(
            Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    @required
        TResult typesFetched(
            Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    @required TResult pokemonCreated(PokemonDetails pokemonDetails),
    @required TResult watchUserPokemon(),
    @required
        TResult streamPokemonData(
            Either<PokemonDetailsFailure, List<PokemonDetails>>
                failureOrPokemon),
    @required TResult pokemonDelete(PokemonDetails pokemonDetails),
  }) {
    assert(started != null);
    assert(detailsFetched != null);
    assert(typesFetched != null);
    assert(pokemonCreated != null);
    assert(watchUserPokemon != null);
    assert(streamPokemonData != null);
    assert(pokemonDelete != null);
    return detailsFetched(pokemonDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(String url),
    TResult detailsFetched(
        Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    TResult typesFetched(
        Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    TResult pokemonCreated(PokemonDetails pokemonDetails),
    TResult watchUserPokemon(),
    TResult streamPokemonData(
        Either<PokemonDetailsFailure, List<PokemonDetails>> failureOrPokemon),
    TResult pokemonDelete(PokemonDetails pokemonDetails),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (detailsFetched != null) {
      return detailsFetched(pokemonDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult detailsFetched(_DetailsFetched value),
    @required TResult typesFetched(_TypesFetched value),
    @required TResult pokemonCreated(_PokemonCreated value),
    @required TResult watchUserPokemon(_WatchUserPokemon value),
    @required TResult streamPokemonData(StreamPokemonData value),
    @required TResult pokemonDelete(_PokemonDelete value),
  }) {
    assert(started != null);
    assert(detailsFetched != null);
    assert(typesFetched != null);
    assert(pokemonCreated != null);
    assert(watchUserPokemon != null);
    assert(streamPokemonData != null);
    assert(pokemonDelete != null);
    return detailsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult detailsFetched(_DetailsFetched value),
    TResult typesFetched(_TypesFetched value),
    TResult pokemonCreated(_PokemonCreated value),
    TResult watchUserPokemon(_WatchUserPokemon value),
    TResult streamPokemonData(StreamPokemonData value),
    TResult pokemonDelete(_PokemonDelete value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (detailsFetched != null) {
      return detailsFetched(this);
    }
    return orElse();
  }
}

abstract class _DetailsFetched implements PokemonDetailsEvent {
  const factory _DetailsFetched(
          Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails) =
      _$_DetailsFetched;

  Either<PokemonDetailsFailure, PokemonDetails> get pokemonDetails;
  @JsonKey(ignore: true)
  _$DetailsFetchedCopyWith<_DetailsFetched> get copyWith;
}

/// @nodoc
abstract class _$TypesFetchedCopyWith<$Res> {
  factory _$TypesFetchedCopyWith(
          _TypesFetched value, $Res Function(_TypesFetched) then) =
      __$TypesFetchedCopyWithImpl<$Res>;
  $Res call({Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes});
}

/// @nodoc
class __$TypesFetchedCopyWithImpl<$Res>
    extends _$PokemonDetailsEventCopyWithImpl<$Res>
    implements _$TypesFetchedCopyWith<$Res> {
  __$TypesFetchedCopyWithImpl(
      _TypesFetched _value, $Res Function(_TypesFetched) _then)
      : super(_value, (v) => _then(v as _TypesFetched));

  @override
  _TypesFetched get _value => super._value as _TypesFetched;

  @override
  $Res call({
    Object pokemonTypes = freezed,
  }) {
    return _then(_TypesFetched(
      pokemonTypes == freezed
          ? _value.pokemonTypes
          : pokemonTypes as Either<PokemonDetailsFailure, List<PokemonType>>,
    ));
  }
}

/// @nodoc
class _$_TypesFetched implements _TypesFetched {
  const _$_TypesFetched(this.pokemonTypes) : assert(pokemonTypes != null);

  @override
  final Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes;

  @override
  String toString() {
    return 'PokemonDetailsEvent.typesFetched(pokemonTypes: $pokemonTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TypesFetched &&
            (identical(other.pokemonTypes, pokemonTypes) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonTypes, pokemonTypes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pokemonTypes);

  @JsonKey(ignore: true)
  @override
  _$TypesFetchedCopyWith<_TypesFetched> get copyWith =>
      __$TypesFetchedCopyWithImpl<_TypesFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(String url),
    @required
        TResult detailsFetched(
            Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    @required
        TResult typesFetched(
            Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    @required TResult pokemonCreated(PokemonDetails pokemonDetails),
    @required TResult watchUserPokemon(),
    @required
        TResult streamPokemonData(
            Either<PokemonDetailsFailure, List<PokemonDetails>>
                failureOrPokemon),
    @required TResult pokemonDelete(PokemonDetails pokemonDetails),
  }) {
    assert(started != null);
    assert(detailsFetched != null);
    assert(typesFetched != null);
    assert(pokemonCreated != null);
    assert(watchUserPokemon != null);
    assert(streamPokemonData != null);
    assert(pokemonDelete != null);
    return typesFetched(pokemonTypes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(String url),
    TResult detailsFetched(
        Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    TResult typesFetched(
        Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    TResult pokemonCreated(PokemonDetails pokemonDetails),
    TResult watchUserPokemon(),
    TResult streamPokemonData(
        Either<PokemonDetailsFailure, List<PokemonDetails>> failureOrPokemon),
    TResult pokemonDelete(PokemonDetails pokemonDetails),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (typesFetched != null) {
      return typesFetched(pokemonTypes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult detailsFetched(_DetailsFetched value),
    @required TResult typesFetched(_TypesFetched value),
    @required TResult pokemonCreated(_PokemonCreated value),
    @required TResult watchUserPokemon(_WatchUserPokemon value),
    @required TResult streamPokemonData(StreamPokemonData value),
    @required TResult pokemonDelete(_PokemonDelete value),
  }) {
    assert(started != null);
    assert(detailsFetched != null);
    assert(typesFetched != null);
    assert(pokemonCreated != null);
    assert(watchUserPokemon != null);
    assert(streamPokemonData != null);
    assert(pokemonDelete != null);
    return typesFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult detailsFetched(_DetailsFetched value),
    TResult typesFetched(_TypesFetched value),
    TResult pokemonCreated(_PokemonCreated value),
    TResult watchUserPokemon(_WatchUserPokemon value),
    TResult streamPokemonData(StreamPokemonData value),
    TResult pokemonDelete(_PokemonDelete value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (typesFetched != null) {
      return typesFetched(this);
    }
    return orElse();
  }
}

abstract class _TypesFetched implements PokemonDetailsEvent {
  const factory _TypesFetched(
          Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes) =
      _$_TypesFetched;

  Either<PokemonDetailsFailure, List<PokemonType>> get pokemonTypes;
  @JsonKey(ignore: true)
  _$TypesFetchedCopyWith<_TypesFetched> get copyWith;
}

/// @nodoc
abstract class _$PokemonCreatedCopyWith<$Res> {
  factory _$PokemonCreatedCopyWith(
          _PokemonCreated value, $Res Function(_PokemonCreated) then) =
      __$PokemonCreatedCopyWithImpl<$Res>;
  $Res call({PokemonDetails pokemonDetails});

  $PokemonDetailsCopyWith<$Res> get pokemonDetails;
}

/// @nodoc
class __$PokemonCreatedCopyWithImpl<$Res>
    extends _$PokemonDetailsEventCopyWithImpl<$Res>
    implements _$PokemonCreatedCopyWith<$Res> {
  __$PokemonCreatedCopyWithImpl(
      _PokemonCreated _value, $Res Function(_PokemonCreated) _then)
      : super(_value, (v) => _then(v as _PokemonCreated));

  @override
  _PokemonCreated get _value => super._value as _PokemonCreated;

  @override
  $Res call({
    Object pokemonDetails = freezed,
  }) {
    return _then(_PokemonCreated(
      pokemonDetails == freezed
          ? _value.pokemonDetails
          : pokemonDetails as PokemonDetails,
    ));
  }

  @override
  $PokemonDetailsCopyWith<$Res> get pokemonDetails {
    if (_value.pokemonDetails == null) {
      return null;
    }
    return $PokemonDetailsCopyWith<$Res>(_value.pokemonDetails, (value) {
      return _then(_value.copyWith(pokemonDetails: value));
    });
  }
}

/// @nodoc
class _$_PokemonCreated implements _PokemonCreated {
  const _$_PokemonCreated(this.pokemonDetails) : assert(pokemonDetails != null);

  @override
  final PokemonDetails pokemonDetails;

  @override
  String toString() {
    return 'PokemonDetailsEvent.pokemonCreated(pokemonDetails: $pokemonDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonCreated &&
            (identical(other.pokemonDetails, pokemonDetails) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonDetails, pokemonDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pokemonDetails);

  @JsonKey(ignore: true)
  @override
  _$PokemonCreatedCopyWith<_PokemonCreated> get copyWith =>
      __$PokemonCreatedCopyWithImpl<_PokemonCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(String url),
    @required
        TResult detailsFetched(
            Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    @required
        TResult typesFetched(
            Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    @required TResult pokemonCreated(PokemonDetails pokemonDetails),
    @required TResult watchUserPokemon(),
    @required
        TResult streamPokemonData(
            Either<PokemonDetailsFailure, List<PokemonDetails>>
                failureOrPokemon),
    @required TResult pokemonDelete(PokemonDetails pokemonDetails),
  }) {
    assert(started != null);
    assert(detailsFetched != null);
    assert(typesFetched != null);
    assert(pokemonCreated != null);
    assert(watchUserPokemon != null);
    assert(streamPokemonData != null);
    assert(pokemonDelete != null);
    return pokemonCreated(pokemonDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(String url),
    TResult detailsFetched(
        Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    TResult typesFetched(
        Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    TResult pokemonCreated(PokemonDetails pokemonDetails),
    TResult watchUserPokemon(),
    TResult streamPokemonData(
        Either<PokemonDetailsFailure, List<PokemonDetails>> failureOrPokemon),
    TResult pokemonDelete(PokemonDetails pokemonDetails),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pokemonCreated != null) {
      return pokemonCreated(pokemonDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult detailsFetched(_DetailsFetched value),
    @required TResult typesFetched(_TypesFetched value),
    @required TResult pokemonCreated(_PokemonCreated value),
    @required TResult watchUserPokemon(_WatchUserPokemon value),
    @required TResult streamPokemonData(StreamPokemonData value),
    @required TResult pokemonDelete(_PokemonDelete value),
  }) {
    assert(started != null);
    assert(detailsFetched != null);
    assert(typesFetched != null);
    assert(pokemonCreated != null);
    assert(watchUserPokemon != null);
    assert(streamPokemonData != null);
    assert(pokemonDelete != null);
    return pokemonCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult detailsFetched(_DetailsFetched value),
    TResult typesFetched(_TypesFetched value),
    TResult pokemonCreated(_PokemonCreated value),
    TResult watchUserPokemon(_WatchUserPokemon value),
    TResult streamPokemonData(StreamPokemonData value),
    TResult pokemonDelete(_PokemonDelete value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pokemonCreated != null) {
      return pokemonCreated(this);
    }
    return orElse();
  }
}

abstract class _PokemonCreated implements PokemonDetailsEvent {
  const factory _PokemonCreated(PokemonDetails pokemonDetails) =
      _$_PokemonCreated;

  PokemonDetails get pokemonDetails;
  @JsonKey(ignore: true)
  _$PokemonCreatedCopyWith<_PokemonCreated> get copyWith;
}

/// @nodoc
abstract class _$WatchUserPokemonCopyWith<$Res> {
  factory _$WatchUserPokemonCopyWith(
          _WatchUserPokemon value, $Res Function(_WatchUserPokemon) then) =
      __$WatchUserPokemonCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchUserPokemonCopyWithImpl<$Res>
    extends _$PokemonDetailsEventCopyWithImpl<$Res>
    implements _$WatchUserPokemonCopyWith<$Res> {
  __$WatchUserPokemonCopyWithImpl(
      _WatchUserPokemon _value, $Res Function(_WatchUserPokemon) _then)
      : super(_value, (v) => _then(v as _WatchUserPokemon));

  @override
  _WatchUserPokemon get _value => super._value as _WatchUserPokemon;
}

/// @nodoc
class _$_WatchUserPokemon implements _WatchUserPokemon {
  const _$_WatchUserPokemon();

  @override
  String toString() {
    return 'PokemonDetailsEvent.watchUserPokemon()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchUserPokemon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(String url),
    @required
        TResult detailsFetched(
            Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    @required
        TResult typesFetched(
            Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    @required TResult pokemonCreated(PokemonDetails pokemonDetails),
    @required TResult watchUserPokemon(),
    @required
        TResult streamPokemonData(
            Either<PokemonDetailsFailure, List<PokemonDetails>>
                failureOrPokemon),
    @required TResult pokemonDelete(PokemonDetails pokemonDetails),
  }) {
    assert(started != null);
    assert(detailsFetched != null);
    assert(typesFetched != null);
    assert(pokemonCreated != null);
    assert(watchUserPokemon != null);
    assert(streamPokemonData != null);
    assert(pokemonDelete != null);
    return watchUserPokemon();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(String url),
    TResult detailsFetched(
        Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    TResult typesFetched(
        Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    TResult pokemonCreated(PokemonDetails pokemonDetails),
    TResult watchUserPokemon(),
    TResult streamPokemonData(
        Either<PokemonDetailsFailure, List<PokemonDetails>> failureOrPokemon),
    TResult pokemonDelete(PokemonDetails pokemonDetails),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUserPokemon != null) {
      return watchUserPokemon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult detailsFetched(_DetailsFetched value),
    @required TResult typesFetched(_TypesFetched value),
    @required TResult pokemonCreated(_PokemonCreated value),
    @required TResult watchUserPokemon(_WatchUserPokemon value),
    @required TResult streamPokemonData(StreamPokemonData value),
    @required TResult pokemonDelete(_PokemonDelete value),
  }) {
    assert(started != null);
    assert(detailsFetched != null);
    assert(typesFetched != null);
    assert(pokemonCreated != null);
    assert(watchUserPokemon != null);
    assert(streamPokemonData != null);
    assert(pokemonDelete != null);
    return watchUserPokemon(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult detailsFetched(_DetailsFetched value),
    TResult typesFetched(_TypesFetched value),
    TResult pokemonCreated(_PokemonCreated value),
    TResult watchUserPokemon(_WatchUserPokemon value),
    TResult streamPokemonData(StreamPokemonData value),
    TResult pokemonDelete(_PokemonDelete value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUserPokemon != null) {
      return watchUserPokemon(this);
    }
    return orElse();
  }
}

abstract class _WatchUserPokemon implements PokemonDetailsEvent {
  const factory _WatchUserPokemon() = _$_WatchUserPokemon;
}

/// @nodoc
abstract class $StreamPokemonDataCopyWith<$Res> {
  factory $StreamPokemonDataCopyWith(
          StreamPokemonData value, $Res Function(StreamPokemonData) then) =
      _$StreamPokemonDataCopyWithImpl<$Res>;
  $Res call(
      {Either<PokemonDetailsFailure, List<PokemonDetails>> failureOrPokemon});
}

/// @nodoc
class _$StreamPokemonDataCopyWithImpl<$Res>
    extends _$PokemonDetailsEventCopyWithImpl<$Res>
    implements $StreamPokemonDataCopyWith<$Res> {
  _$StreamPokemonDataCopyWithImpl(
      StreamPokemonData _value, $Res Function(StreamPokemonData) _then)
      : super(_value, (v) => _then(v as StreamPokemonData));

  @override
  StreamPokemonData get _value => super._value as StreamPokemonData;

  @override
  $Res call({
    Object failureOrPokemon = freezed,
  }) {
    return _then(StreamPokemonData(
      failureOrPokemon == freezed
          ? _value.failureOrPokemon
          : failureOrPokemon
              as Either<PokemonDetailsFailure, List<PokemonDetails>>,
    ));
  }
}

/// @nodoc
class _$StreamPokemonData implements StreamPokemonData {
  const _$StreamPokemonData(this.failureOrPokemon)
      : assert(failureOrPokemon != null);

  @override
  final Either<PokemonDetailsFailure, List<PokemonDetails>> failureOrPokemon;

  @override
  String toString() {
    return 'PokemonDetailsEvent.streamPokemonData(failureOrPokemon: $failureOrPokemon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StreamPokemonData &&
            (identical(other.failureOrPokemon, failureOrPokemon) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPokemon, failureOrPokemon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPokemon);

  @JsonKey(ignore: true)
  @override
  $StreamPokemonDataCopyWith<StreamPokemonData> get copyWith =>
      _$StreamPokemonDataCopyWithImpl<StreamPokemonData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(String url),
    @required
        TResult detailsFetched(
            Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    @required
        TResult typesFetched(
            Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    @required TResult pokemonCreated(PokemonDetails pokemonDetails),
    @required TResult watchUserPokemon(),
    @required
        TResult streamPokemonData(
            Either<PokemonDetailsFailure, List<PokemonDetails>>
                failureOrPokemon),
    @required TResult pokemonDelete(PokemonDetails pokemonDetails),
  }) {
    assert(started != null);
    assert(detailsFetched != null);
    assert(typesFetched != null);
    assert(pokemonCreated != null);
    assert(watchUserPokemon != null);
    assert(streamPokemonData != null);
    assert(pokemonDelete != null);
    return streamPokemonData(failureOrPokemon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(String url),
    TResult detailsFetched(
        Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    TResult typesFetched(
        Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    TResult pokemonCreated(PokemonDetails pokemonDetails),
    TResult watchUserPokemon(),
    TResult streamPokemonData(
        Either<PokemonDetailsFailure, List<PokemonDetails>> failureOrPokemon),
    TResult pokemonDelete(PokemonDetails pokemonDetails),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (streamPokemonData != null) {
      return streamPokemonData(failureOrPokemon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult detailsFetched(_DetailsFetched value),
    @required TResult typesFetched(_TypesFetched value),
    @required TResult pokemonCreated(_PokemonCreated value),
    @required TResult watchUserPokemon(_WatchUserPokemon value),
    @required TResult streamPokemonData(StreamPokemonData value),
    @required TResult pokemonDelete(_PokemonDelete value),
  }) {
    assert(started != null);
    assert(detailsFetched != null);
    assert(typesFetched != null);
    assert(pokemonCreated != null);
    assert(watchUserPokemon != null);
    assert(streamPokemonData != null);
    assert(pokemonDelete != null);
    return streamPokemonData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult detailsFetched(_DetailsFetched value),
    TResult typesFetched(_TypesFetched value),
    TResult pokemonCreated(_PokemonCreated value),
    TResult watchUserPokemon(_WatchUserPokemon value),
    TResult streamPokemonData(StreamPokemonData value),
    TResult pokemonDelete(_PokemonDelete value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (streamPokemonData != null) {
      return streamPokemonData(this);
    }
    return orElse();
  }
}

abstract class StreamPokemonData implements PokemonDetailsEvent {
  const factory StreamPokemonData(
      Either<PokemonDetailsFailure, List<PokemonDetails>>
          failureOrPokemon) = _$StreamPokemonData;

  Either<PokemonDetailsFailure, List<PokemonDetails>> get failureOrPokemon;
  @JsonKey(ignore: true)
  $StreamPokemonDataCopyWith<StreamPokemonData> get copyWith;
}

/// @nodoc
abstract class _$PokemonDeleteCopyWith<$Res> {
  factory _$PokemonDeleteCopyWith(
          _PokemonDelete value, $Res Function(_PokemonDelete) then) =
      __$PokemonDeleteCopyWithImpl<$Res>;
  $Res call({PokemonDetails pokemonDetails});

  $PokemonDetailsCopyWith<$Res> get pokemonDetails;
}

/// @nodoc
class __$PokemonDeleteCopyWithImpl<$Res>
    extends _$PokemonDetailsEventCopyWithImpl<$Res>
    implements _$PokemonDeleteCopyWith<$Res> {
  __$PokemonDeleteCopyWithImpl(
      _PokemonDelete _value, $Res Function(_PokemonDelete) _then)
      : super(_value, (v) => _then(v as _PokemonDelete));

  @override
  _PokemonDelete get _value => super._value as _PokemonDelete;

  @override
  $Res call({
    Object pokemonDetails = freezed,
  }) {
    return _then(_PokemonDelete(
      pokemonDetails == freezed
          ? _value.pokemonDetails
          : pokemonDetails as PokemonDetails,
    ));
  }

  @override
  $PokemonDetailsCopyWith<$Res> get pokemonDetails {
    if (_value.pokemonDetails == null) {
      return null;
    }
    return $PokemonDetailsCopyWith<$Res>(_value.pokemonDetails, (value) {
      return _then(_value.copyWith(pokemonDetails: value));
    });
  }
}

/// @nodoc
class _$_PokemonDelete implements _PokemonDelete {
  const _$_PokemonDelete(this.pokemonDetails) : assert(pokemonDetails != null);

  @override
  final PokemonDetails pokemonDetails;

  @override
  String toString() {
    return 'PokemonDetailsEvent.pokemonDelete(pokemonDetails: $pokemonDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonDelete &&
            (identical(other.pokemonDetails, pokemonDetails) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonDetails, pokemonDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pokemonDetails);

  @JsonKey(ignore: true)
  @override
  _$PokemonDeleteCopyWith<_PokemonDelete> get copyWith =>
      __$PokemonDeleteCopyWithImpl<_PokemonDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(String url),
    @required
        TResult detailsFetched(
            Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    @required
        TResult typesFetched(
            Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    @required TResult pokemonCreated(PokemonDetails pokemonDetails),
    @required TResult watchUserPokemon(),
    @required
        TResult streamPokemonData(
            Either<PokemonDetailsFailure, List<PokemonDetails>>
                failureOrPokemon),
    @required TResult pokemonDelete(PokemonDetails pokemonDetails),
  }) {
    assert(started != null);
    assert(detailsFetched != null);
    assert(typesFetched != null);
    assert(pokemonCreated != null);
    assert(watchUserPokemon != null);
    assert(streamPokemonData != null);
    assert(pokemonDelete != null);
    return pokemonDelete(pokemonDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(String url),
    TResult detailsFetched(
        Either<PokemonDetailsFailure, PokemonDetails> pokemonDetails),
    TResult typesFetched(
        Either<PokemonDetailsFailure, List<PokemonType>> pokemonTypes),
    TResult pokemonCreated(PokemonDetails pokemonDetails),
    TResult watchUserPokemon(),
    TResult streamPokemonData(
        Either<PokemonDetailsFailure, List<PokemonDetails>> failureOrPokemon),
    TResult pokemonDelete(PokemonDetails pokemonDetails),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pokemonDelete != null) {
      return pokemonDelete(pokemonDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult detailsFetched(_DetailsFetched value),
    @required TResult typesFetched(_TypesFetched value),
    @required TResult pokemonCreated(_PokemonCreated value),
    @required TResult watchUserPokemon(_WatchUserPokemon value),
    @required TResult streamPokemonData(StreamPokemonData value),
    @required TResult pokemonDelete(_PokemonDelete value),
  }) {
    assert(started != null);
    assert(detailsFetched != null);
    assert(typesFetched != null);
    assert(pokemonCreated != null);
    assert(watchUserPokemon != null);
    assert(streamPokemonData != null);
    assert(pokemonDelete != null);
    return pokemonDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult detailsFetched(_DetailsFetched value),
    TResult typesFetched(_TypesFetched value),
    TResult pokemonCreated(_PokemonCreated value),
    TResult watchUserPokemon(_WatchUserPokemon value),
    TResult streamPokemonData(StreamPokemonData value),
    TResult pokemonDelete(_PokemonDelete value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pokemonDelete != null) {
      return pokemonDelete(this);
    }
    return orElse();
  }
}

abstract class _PokemonDelete implements PokemonDetailsEvent {
  const factory _PokemonDelete(PokemonDetails pokemonDetails) =
      _$_PokemonDelete;

  PokemonDetails get pokemonDetails;
  @JsonKey(ignore: true)
  _$PokemonDeleteCopyWith<_PokemonDelete> get copyWith;
}

/// @nodoc
class _$PokemonDetailsStateTearOff {
  const _$PokemonDetailsStateTearOff();

// ignore: unused_element
  _PokemonDetailsState call(
      {@required PokemonDetails pokemonDetails,
      @required List<PokemonDetails> listPokemonDetails,
      @required List<PokemonType> pokemonTypes,
      @required Option<Either<PokemonDetailsFailure, Unit>> failureOrSuccess,
      @required bool isFetching,
      @required bool addingOrDeleting}) {
    return _PokemonDetailsState(
      pokemonDetails: pokemonDetails,
      listPokemonDetails: listPokemonDetails,
      pokemonTypes: pokemonTypes,
      failureOrSuccess: failureOrSuccess,
      isFetching: isFetching,
      addingOrDeleting: addingOrDeleting,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PokemonDetailsState = _$PokemonDetailsStateTearOff();

/// @nodoc
mixin _$PokemonDetailsState {
  PokemonDetails get pokemonDetails;
  List<PokemonDetails> get listPokemonDetails;
  List<PokemonType> get pokemonTypes;
  Option<Either<PokemonDetailsFailure, Unit>> get failureOrSuccess;
  bool get isFetching;
  bool get addingOrDeleting;

  @JsonKey(ignore: true)
  $PokemonDetailsStateCopyWith<PokemonDetailsState> get copyWith;
}

/// @nodoc
abstract class $PokemonDetailsStateCopyWith<$Res> {
  factory $PokemonDetailsStateCopyWith(
          PokemonDetailsState value, $Res Function(PokemonDetailsState) then) =
      _$PokemonDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {PokemonDetails pokemonDetails,
      List<PokemonDetails> listPokemonDetails,
      List<PokemonType> pokemonTypes,
      Option<Either<PokemonDetailsFailure, Unit>> failureOrSuccess,
      bool isFetching,
      bool addingOrDeleting});

  $PokemonDetailsCopyWith<$Res> get pokemonDetails;
}

/// @nodoc
class _$PokemonDetailsStateCopyWithImpl<$Res>
    implements $PokemonDetailsStateCopyWith<$Res> {
  _$PokemonDetailsStateCopyWithImpl(this._value, this._then);

  final PokemonDetailsState _value;
  // ignore: unused_field
  final $Res Function(PokemonDetailsState) _then;

  @override
  $Res call({
    Object pokemonDetails = freezed,
    Object listPokemonDetails = freezed,
    Object pokemonTypes = freezed,
    Object failureOrSuccess = freezed,
    Object isFetching = freezed,
    Object addingOrDeleting = freezed,
  }) {
    return _then(_value.copyWith(
      pokemonDetails: pokemonDetails == freezed
          ? _value.pokemonDetails
          : pokemonDetails as PokemonDetails,
      listPokemonDetails: listPokemonDetails == freezed
          ? _value.listPokemonDetails
          : listPokemonDetails as List<PokemonDetails>,
      pokemonTypes: pokemonTypes == freezed
          ? _value.pokemonTypes
          : pokemonTypes as List<PokemonType>,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess as Option<Either<PokemonDetailsFailure, Unit>>,
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      addingOrDeleting: addingOrDeleting == freezed
          ? _value.addingOrDeleting
          : addingOrDeleting as bool,
    ));
  }

  @override
  $PokemonDetailsCopyWith<$Res> get pokemonDetails {
    if (_value.pokemonDetails == null) {
      return null;
    }
    return $PokemonDetailsCopyWith<$Res>(_value.pokemonDetails, (value) {
      return _then(_value.copyWith(pokemonDetails: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonDetailsStateCopyWith<$Res>
    implements $PokemonDetailsStateCopyWith<$Res> {
  factory _$PokemonDetailsStateCopyWith(_PokemonDetailsState value,
          $Res Function(_PokemonDetailsState) then) =
      __$PokemonDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PokemonDetails pokemonDetails,
      List<PokemonDetails> listPokemonDetails,
      List<PokemonType> pokemonTypes,
      Option<Either<PokemonDetailsFailure, Unit>> failureOrSuccess,
      bool isFetching,
      bool addingOrDeleting});

  @override
  $PokemonDetailsCopyWith<$Res> get pokemonDetails;
}

/// @nodoc
class __$PokemonDetailsStateCopyWithImpl<$Res>
    extends _$PokemonDetailsStateCopyWithImpl<$Res>
    implements _$PokemonDetailsStateCopyWith<$Res> {
  __$PokemonDetailsStateCopyWithImpl(
      _PokemonDetailsState _value, $Res Function(_PokemonDetailsState) _then)
      : super(_value, (v) => _then(v as _PokemonDetailsState));

  @override
  _PokemonDetailsState get _value => super._value as _PokemonDetailsState;

  @override
  $Res call({
    Object pokemonDetails = freezed,
    Object listPokemonDetails = freezed,
    Object pokemonTypes = freezed,
    Object failureOrSuccess = freezed,
    Object isFetching = freezed,
    Object addingOrDeleting = freezed,
  }) {
    return _then(_PokemonDetailsState(
      pokemonDetails: pokemonDetails == freezed
          ? _value.pokemonDetails
          : pokemonDetails as PokemonDetails,
      listPokemonDetails: listPokemonDetails == freezed
          ? _value.listPokemonDetails
          : listPokemonDetails as List<PokemonDetails>,
      pokemonTypes: pokemonTypes == freezed
          ? _value.pokemonTypes
          : pokemonTypes as List<PokemonType>,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess as Option<Either<PokemonDetailsFailure, Unit>>,
      isFetching:
          isFetching == freezed ? _value.isFetching : isFetching as bool,
      addingOrDeleting: addingOrDeleting == freezed
          ? _value.addingOrDeleting
          : addingOrDeleting as bool,
    ));
  }
}

/// @nodoc
class _$_PokemonDetailsState implements _PokemonDetailsState {
  const _$_PokemonDetailsState(
      {@required this.pokemonDetails,
      @required this.listPokemonDetails,
      @required this.pokemonTypes,
      @required this.failureOrSuccess,
      @required this.isFetching,
      @required this.addingOrDeleting})
      : assert(pokemonDetails != null),
        assert(listPokemonDetails != null),
        assert(pokemonTypes != null),
        assert(failureOrSuccess != null),
        assert(isFetching != null),
        assert(addingOrDeleting != null);

  @override
  final PokemonDetails pokemonDetails;
  @override
  final List<PokemonDetails> listPokemonDetails;
  @override
  final List<PokemonType> pokemonTypes;
  @override
  final Option<Either<PokemonDetailsFailure, Unit>> failureOrSuccess;
  @override
  final bool isFetching;
  @override
  final bool addingOrDeleting;

  @override
  String toString() {
    return 'PokemonDetailsState(pokemonDetails: $pokemonDetails, listPokemonDetails: $listPokemonDetails, pokemonTypes: $pokemonTypes, failureOrSuccess: $failureOrSuccess, isFetching: $isFetching, addingOrDeleting: $addingOrDeleting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonDetailsState &&
            (identical(other.pokemonDetails, pokemonDetails) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonDetails, pokemonDetails)) &&
            (identical(other.listPokemonDetails, listPokemonDetails) ||
                const DeepCollectionEquality()
                    .equals(other.listPokemonDetails, listPokemonDetails)) &&
            (identical(other.pokemonTypes, pokemonTypes) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonTypes, pokemonTypes)) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSuccess, failureOrSuccess)) &&
            (identical(other.isFetching, isFetching) ||
                const DeepCollectionEquality()
                    .equals(other.isFetching, isFetching)) &&
            (identical(other.addingOrDeleting, addingOrDeleting) ||
                const DeepCollectionEquality()
                    .equals(other.addingOrDeleting, addingOrDeleting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pokemonDetails) ^
      const DeepCollectionEquality().hash(listPokemonDetails) ^
      const DeepCollectionEquality().hash(pokemonTypes) ^
      const DeepCollectionEquality().hash(failureOrSuccess) ^
      const DeepCollectionEquality().hash(isFetching) ^
      const DeepCollectionEquality().hash(addingOrDeleting);

  @JsonKey(ignore: true)
  @override
  _$PokemonDetailsStateCopyWith<_PokemonDetailsState> get copyWith =>
      __$PokemonDetailsStateCopyWithImpl<_PokemonDetailsState>(
          this, _$identity);
}

abstract class _PokemonDetailsState implements PokemonDetailsState {
  const factory _PokemonDetailsState(
      {@required PokemonDetails pokemonDetails,
      @required List<PokemonDetails> listPokemonDetails,
      @required List<PokemonType> pokemonTypes,
      @required Option<Either<PokemonDetailsFailure, Unit>> failureOrSuccess,
      @required bool isFetching,
      @required bool addingOrDeleting}) = _$_PokemonDetailsState;

  @override
  PokemonDetails get pokemonDetails;
  @override
  List<PokemonDetails> get listPokemonDetails;
  @override
  List<PokemonType> get pokemonTypes;
  @override
  Option<Either<PokemonDetailsFailure, Unit>> get failureOrSuccess;
  @override
  bool get isFetching;
  @override
  bool get addingOrDeleting;
  @override
  @JsonKey(ignore: true)
  _$PokemonDetailsStateCopyWith<_PokemonDetailsState> get copyWith;
}
