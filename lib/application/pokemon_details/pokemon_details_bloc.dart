import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/domain/pokemon_details/i_pokemon_details_repository.dart';
import 'package:pokedex/domain/pokemon_details/pokemon_details.dart';
import 'package:pokedex/domain/pokemon_details/pokemon_details_failure.dart';
import 'package:pokedex/domain/pokemon_details/pokemon_types/pokemon_types.dart';

part 'pokemon_details_event.dart';
part 'pokemon_details_state.dart';
part 'pokemon_details_bloc.freezed.dart';

@injectable
class PokemonDetailsBloc
    extends Bloc<PokemonDetailsEvent, PokemonDetailsState> {
  final IPokemonDetailsRepository _iPokemonDetailsRepository;
  StreamSubscription<Either<PokemonDetailsFailure, List<PokemonDetails>>>
      _pokemonStreamSubscription;
  PokemonDetailsBloc(
    this._iPokemonDetailsRepository,
  ) : super(PokemonDetailsState.initial());

  @override
  Stream<PokemonDetailsState> mapEventToState(
    PokemonDetailsEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield state.copyWith(
          isFetching: true,
        );
        _iPokemonDetailsRepository.watchDetails(url: e.url).then(
              (failure) => add(
                PokemonDetailsEvent.detailsFetched(failure),
              ),
            );
        _iPokemonDetailsRepository.watchTypes(url: e.url).then(
              (failure) => add(
                PokemonDetailsEvent.typesFetched(failure),
              ),
            );
      },
      detailsFetched: (e) async* {
        yield e.pokemonDetails.fold(
          (failure) {
            return state.copyWith(
                isFetching: false,
                failureOrSuccess: optionOf(
                  left(failure),
                ));
          },
          (r) {
            return state.copyWith(
                isFetching: false,
                failureOrSuccess: optionOf(
                  right(unit),
                ),
                pokemonDetails: r);
          },
        );
      },
      typesFetched: (e) async* {
        yield e.pokemonTypes.fold(
          (failure) {
            return state.copyWith(
                isFetching: false,
                failureOrSuccess: optionOf(
                  left(failure),
                ));
          },
          (r) {
            return state.copyWith(
                isFetching: false,
                failureOrSuccess: optionOf(
                  right(unit),
                ),
                pokemonTypes: r);
          },
        );
      },
      pokemonCreated: (e) async* {
        yield state.copyWith(addingOrDeleting: true);
        final failureOrSuccess = await _iPokemonDetailsRepository
            .pokemonCollectionCreate(e.pokemonDetails);
        yield state.copyWith(
          addingOrDeleting: false,
          failureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      watchUserPokemon: (e) async* {
        yield state.copyWith(isFetching: true, failureOrSuccess: none());
        await _pokemonStreamSubscription?.cancel();

        _pokemonStreamSubscription = _iPokemonDetailsRepository
            .pokemonCollection()
            .listen((failureOrPokemon) =>
                add(PokemonDetailsEvent.streamPokemonData(failureOrPokemon)));
      },
      streamPokemonData: (e) async* {
        state.listPokemonDetails.clear();
        yield e.failureOrPokemon.fold(
          (failure) => state.copyWith(
            isFetching: false,
            failureOrSuccess: optionOf(left(failure)),
          ),
          (success) {
            return state.copyWith(
              isFetching: false,
              failureOrSuccess: optionOf(right(unit)),
              listPokemonDetails: state.listPokemonDetails..addAll(success),
            );
          },
        );
      },
      pokemonDelete: (e) async* {
        yield state.copyWith(addingOrDeleting: true);
        final failureOrSuccess = await _iPokemonDetailsRepository
            .pokemonCollectionDelete(e.pokemonDetails);
        yield state.copyWith(
          addingOrDeleting: false,
          failureOrSuccess: optionOf(failureOrSuccess),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _pokemonStreamSubscription?.cancel();
    return super.close();
  }
}
