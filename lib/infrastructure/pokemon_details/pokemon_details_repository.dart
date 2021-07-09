import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/domain/pokemon_details/i_pokemon_details_repository.dart';
import 'package:pokedex/domain/pokemon_details/pokemon_details.dart';
import 'package:pokedex/domain/pokemon_details/pokemon_details_failure.dart';
import 'package:pokedex/domain/pokemon_details/pokemon_types/pokemon_types.dart';
import 'package:pokedex/infrastructure/pokemon_details/pokemon_details_dto.dart';
import 'package:pokedex/infrastructure/pokemon_details/pokemon_types/pokemon_type_dto.dart';
import 'package:pokedex/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';

// const baseURL = 'https://pokeapi.co/api/v2';

@LazySingleton(as: IPokemonDetailsRepository)
class PokemonDetailsRepository implements IPokemonDetailsRepository {
  final FirebaseFirestore _firebaseFirestore;

  PokemonDetailsRepository(this._firebaseFirestore);
  @override
  Future<Either<PokemonDetailsFailure, PokemonDetails>> watchDetails({
    String url,
  }) async {
    try {
      final http.Response getPokemonDetails = await http.get(url);
      if (getPokemonDetails.statusCode == 200) {
        final data = jsonDecode(getPokemonDetails.body) as Map<String, dynamic>;
        // print(data.length);
        final PokemonDetails pokemonDetails =
            PokemonDetailsDTO.fromJson(data).toDomain();
        return right(pokemonDetails);
      } else {
        return left(const PokemonDetailsFailure.unexpected());
      }
    } on Exception {
      return left(const PokemonDetailsFailure.unexpected());
    }
  }

  @override
  Future<Either<PokemonDetailsFailure, List<PokemonType>>> watchTypes({
    String url,
  }) async {
    try {
      final http.Response getPokemonDetails = await http.get(url);
      if (getPokemonDetails.statusCode == 200) {
        final data =
            jsonDecode(getPokemonDetails.body)['types'] as List<dynamic>;

        return right(
            data.map((e) => PokemonTypeDTO.fromJson(e).toDomain()).toList());
      } else {
        return left(const PokemonDetailsFailure.unexpected());
      }
    } on Exception {
      return left(const PokemonDetailsFailure.unexpected());
    }
  }

  @override
  Stream<Either<PokemonDetailsFailure, List<PokemonDetails>>>
      pokemonCollection() async* {
    final userDoc = await _firebaseFirestore.userDocument();
    yield* userDoc.pokemonCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshots) => right<PokemonDetailsFailure, List<PokemonDetails>>(
            snapshots.docs.map((doc) {
              return PokemonDetailsDTO.fromFireStore(doc).toDomain();
            }).toList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PokemonDetailsFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(const PokemonDetailsFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<PokemonDetailsFailure, Unit>> pokemonCollectionCreate(
      PokemonDetails pokemon) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final pokemonDetailsDto = PokemonDetailsDTO.fromDomain(pokemon);

      await userDoc.pokemonCollection
          .doc(pokemonDetailsDto.pokemonID.toString())
          .set(pokemonDetailsDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PokemonDetailsFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(const PokemonDetailsFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PokemonDetailsFailure, Unit>> pokemonCollectionDelete(
      PokemonDetails pokemon) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final pokemonId = pokemon.id.getOrCrash().toString();

      await userDoc.pokemonCollection.doc(pokemonId).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PokemonDetailsFailure.insufficientPermission());
      } else if (e is FirebaseException && e.message.contains('NOT FOUND')) {
        return left(const PokemonDetailsFailure.unableToUpdate());
      } else {
        // log.error(e.toString());
        return left(const PokemonDetailsFailure.unexpected());
      }
    }
  }
}
