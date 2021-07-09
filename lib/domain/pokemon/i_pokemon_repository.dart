import 'package:dartz/dartz.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/domain/pokemon/pokemon_failure.dart';

abstract class IPokemonRepository {
  Future<Either<PokemonFailure, List<Pokemon>>> watchAll(int offset);
}
