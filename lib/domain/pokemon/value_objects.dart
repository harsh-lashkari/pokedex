import 'package:dartz/dartz.dart';
import 'package:pokedex/domain/core/failures.dart';
import 'package:pokedex/domain/core/value_objects.dart';
import 'package:pokedex/domain/core/value_validators.dart';

class PokemonName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PokemonName(String input) {
    assert(input != null);
    return PokemonName._(
      validateStringNotEmpty(input),
    );
  }
  const PokemonName._(this.value);
}

class PokemonURL extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PokemonURL(String input) {
    assert(input != null);
    return PokemonURL._(
      validateStringNotEmpty(input),
    );
  }
  const PokemonURL._(this.value);
}