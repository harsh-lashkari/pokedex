import 'package:dartz/dartz.dart';
import 'package:pokedex/domain/core/failures.dart';
import 'package:pokedex/domain/core/value_objects.dart';
import 'package:pokedex/domain/core/value_validators.dart';

class BaseExperience extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory BaseExperience(int input) {
    assert(input != null);
    return BaseExperience._(
      validateIntNotEmpty(input),
    );
  }
  const BaseExperience._(this.value);
}

class PokemonHeight extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory PokemonHeight(int input) {
    assert(input != null);
    return PokemonHeight._(
      validateIntNotEmpty(input),
    );
  }
  const PokemonHeight._(this.value);
}

class PokemonWeight extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory PokemonWeight(int input) {
    assert(input != null);
    return PokemonWeight._(
      validateIntNotEmpty(input),
    );
  }
  const PokemonWeight._(this.value);
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    assert(input != null);
    return Name._(
      validateStringNotEmpty(input),
    );
  }
  const Name._(this.value);
}

class ListPokemonType<T> extends ValueObject<List<T>> {
  @override
  final Either<ValueFailure<List<T>>, List<T>> value;

  factory ListPokemonType(List<T> input) {
    assert(input != null);
    return ListPokemonType._(
      validateListNotEmpty(input),
    );
  }
  const ListPokemonType._(this.value);
}

class BaseStats extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory BaseStats(int input) {
    assert(input != null);
    return BaseStats._(
      validateIntNotEmpty(input),
    );
  }
  const BaseStats._(this.value);
}

class PokemonID extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory PokemonID(int input) {
    assert(input != null);
    return PokemonID._(
      validateIntNotEmpty(input),
    );
  }
  const PokemonID._(this.value);
}
