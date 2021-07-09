import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/application/pokemon_details/pokemon_details_bloc.dart';
import 'package:pokedex/injection.dart';
import 'package:pokedex/presentation/screens/home/widgets/pokemon_collection_card.dart';
import 'package:pokedex/shared/color_constants.dart';
import 'package:pokedex/shared/sizeconfig.dart';

const baseApiURL = "https://pokeapi.co/api/v2/pokemon";

const baseImageURL =
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork";

class PokemonCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PokemonDetailsBloc>()
        ..add(
          const PokemonDetailsEvent.watchUserPokemon(),
        ),
      child: PokemonCollectionBody(),
    );
  }
}

class PokemonCollectionBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomExpandableAppBar(
      bottomAppBarColor: kLightBackgroundColor,
      expandedHeight: SizeConfig.safeBlockVertical * 610,
      horizontalMargin: 10,
      // bottomOffset: 10,
      appBarHeight: 40,
      shape: const AutomaticNotchedShape(
        RoundedRectangleBorder(),
        StadiumBorder(
          side: BorderSide(),
        ),
      ),
      expandedBackColor: Theme.of(context).backgroundColor,
      expandedBody: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: SizeConfig.safeBlockVertical * 40,
            horizontal: SizeConfig.safeBlockHorizontal * 20,
          ),
          child: PokemonCollectionCard(),
        ),
      ),
      bottomAppBarBody: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: const [
            Expanded(
              child: SizedBox(),
            ),
            Spacer(
              flex: 2,
            ),
            Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
