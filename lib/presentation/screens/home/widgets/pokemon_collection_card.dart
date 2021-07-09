import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pokedex/application/pokemon_details/pokemon_details_bloc.dart';
import 'package:pokedex/shared/color_constants.dart';
import 'package:pokedex/shared/sizeconfig.dart';
import 'package:pokedex/presentation/routes/router.gr.dart';
import 'package:pokedex/shared/string_extension.dart';
import 'package:pokedex/shared/text_style_constants.dart';

const baseApiURL = "https://pokeapi.co/api/v2/pokemon";

const baseImageURL =
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork";

class PokemonCollectionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
      builder: (context, state) {
        return state.isFetching
            ? const SpinKitDoubleBounce(
                color: Colors.white,
              )
            : StaggeredGridView.countBuilder(
                staggeredTileBuilder: (int index) =>
                    const StaggeredTile.count(2, 2.5),
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                physics: const BouncingScrollPhysics(),
                itemCount: state.listPokemonDetails.length,
                itemBuilder: (context, index) {
                  final pokemon = state.listPokemonDetails[index];
                  return GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      ExtendedNavigator.of(context).pushPokemonPageBlocProvider(
                        apiURL:
                            "$baseApiURL/${pokemon.id.getOrCrash().toString()}",
                        name: pokemon.name.getOrCrash().toString().capitalize(),
                        imageURL:
                            "$baseImageURL/${pokemon.id.getOrCrash().toString()}.png",
                        index: pokemon.id.getOrCrash(),
                      );
                    },
                    onLongPress: () {
                      final noteActorBloc = context.read<PokemonDetailsBloc>();
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            title: const Text(
                              'Delete Pokemon',
                              style: kAlertTitleTextStyle,
                            ),
                            content: Text(
                              pokemon.name.getOrCrash().toString().capitalize(),
                              style: kAlertContentTextStyle,
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text(
                                  'CANCEL',
                                  style: kAlertActionsTextStyle,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  noteActorBloc.add(
                                    PokemonDetailsEvent.pokemonDelete(pokemon),
                                  );
                                  ExtendedNavigator.of(context).pop(context);
                                },
                                child: const Text(
                                  'DELETE',
                                  style: kAlertActionsTextStyle,
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: kAccentColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white.withOpacity(0.75),
                              ),
                              width: double.maxFinite,
                              child: Image.network(
                                  "$baseImageURL/${pokemon.id.getOrCrash().toString()}.png"),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.safeBlockVertical * 10,
                          ),
                          Text(
                            pokemon.name.getOrCrash().toString().capitalize(),
                            style: kCardTitleTextStyle,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
      },
    );
  }
}
