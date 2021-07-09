import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pokedex/application/pokemon/pokemon_bloc.dart';
import 'package:pokedex/presentation/routes/router.gr.dart';
import 'package:pokedex/shared/color_constants.dart';
import 'package:pokedex/shared/sizeconfig.dart';
import 'package:pokedex/shared/string_extension.dart';
import 'package:pokedex/shared/text_style_constants.dart';

const baseImageURL =
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork";

class PokemonCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonBloc, PokemonState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockHorizontal * 20,
          ),
          child: StaggeredGridView.countBuilder(
            staggeredTileBuilder: (int index) =>
                const StaggeredTile.count(2, 2.5),
            crossAxisCount: 4,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            physics: const BouncingScrollPhysics(),
            itemCount: state.pokemon.length + 1,
            itemBuilder: (context, index) {
              if (index == state.pokemon.length) {
                context.read<PokemonBloc>().add(const PokemonEvent.started());
                return null;
              } else {
                final pokemon = state.pokemon[index];
                return GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();

                    ExtendedNavigator.of(context).pushPokemonPageBlocProvider(
                      apiURL: pokemon.pokemonURL.getOrCrash().toString(),
                      name: pokemon.pokemonName
                          .getOrCrash()
                          .toString()
                          .capitalize(),
                      imageURL: "$baseImageURL/${index + 1}.png",
                      index: index,
                    );
                  },
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    // elevation: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: kAccentColor,
                        // color: Colors.white.withOpacity(0.7),
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
                                "$baseImageURL/${index + 1}.png",
                              ),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.safeBlockVertical * 10,
                          ),
                          Text(
                            pokemon.pokemonName
                                .getOrCrash()
                                .toString()
                                .capitalize(),
                            style: kCardTitleTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        );
      },
    );
  }
}
