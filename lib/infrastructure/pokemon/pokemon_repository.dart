import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/domain/pokemon/i_pokemon_repository.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/domain/pokemon/pokemon_failure.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/infrastructure/pokemon/pokemon_dto.dart';

const baseURL = 'https://pokeapi.co/api/v2';

@LazySingleton(as: IPokemonRepository)
class PokemonRepository implements IPokemonRepository {
  PokemonRepository();
  @override
  Future<Either<PokemonFailure, List<Pokemon>>> watchAll(int offset) async {
    final String url = '$baseURL/pokemon/?offset=$offset&limit=10';

    try {
      final http.Response getPokemon = await http.get(url);
      if (getPokemon.statusCode == 200) {
        final data = jsonDecode(getPokemon.body)['results'] as List<dynamic>;
        // print(data.length);
        return right(
            data.map((e) => PokemonDTO.fromJson(e).toDomain()).toList());
      } else {
        return left(const PokemonFailure.unexpected());
      }
    } on Exception {
      return left(const PokemonFailure.unexpected());
    }
  }
}
