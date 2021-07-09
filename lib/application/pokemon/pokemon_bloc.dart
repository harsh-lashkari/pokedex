import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/domain/pokemon/i_pokemon_repository.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/domain/pokemon/pokemon_failure.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';
part 'pokemon_bloc.freezed.dart';

@injectable
class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final IPokemonRepository _iPokemonRepository;
  PokemonBloc(
    this._iPokemonRepository,
  ) : super(PokemonState.initial());

  @override
  Stream<PokemonState> mapEventToState(
    PokemonEvent event,
  ) async* {
    yield* event.map(started: (e) async* {
      yield state.copyWith(
        isFetching: true,
      );
      final results = await _iPokemonRepository.watchAll(state.offset);
      yield results.fold(
        (l) => state.copyWith(
            isFetching: false, failureOrSuccess: optionOf(left(l))),
        (r) => state.copyWith(
          offset: state.offset + 10,
          isFetching: false,
          failureOrSuccess: optionOf(right(unit)),
          pokemon: state.pokemon..addAll(r),
        ),
      );
    });
  }
}
