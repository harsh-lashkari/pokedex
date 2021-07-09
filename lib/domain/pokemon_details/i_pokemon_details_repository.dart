import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/domain/pokemon_details/pokemon_details.dart';
import 'package:pokedex/domain/pokemon_details/pokemon_details_failure.dart';
import 'package:pokedex/domain/pokemon_details/pokemon_types/pokemon_types.dart';

abstract class IPokemonDetailsRepository {
  Future<Either<PokemonDetailsFailure, PokemonDetails>> watchDetails({
    @required String url,
  });

  Future<Either<PokemonDetailsFailure, List<PokemonType>>> watchTypes({
    @required String url,
  });

  Stream<Either<PokemonDetailsFailure, List<PokemonDetails>>>
      pokemonCollection();

  Future<Either<PokemonDetailsFailure, Unit>> pokemonCollectionCreate(
      PokemonDetails pokemon);

  Future<Either<PokemonDetailsFailure, Unit>> pokemonCollectionDelete(
      PokemonDetails pokemon);
}
