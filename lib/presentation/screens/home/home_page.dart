import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pokedex/application/pokemon/pokemon_bloc.dart';
import 'package:pokedex/application/pokemon_details/pokemon_details_bloc.dart';
import 'package:pokedex/injection.dart';
import 'package:pokedex/presentation/screens/home/widgets/pokemon_collection.dart';
import 'package:pokedex/presentation/screens/home/widgets/pokemon_card.dart';
import 'package:pokedex/presentation/screens/home/widgets/search_bar.dart';
import 'package:pokedex/shared/color_constants.dart';
import 'package:pokedex/shared/sizeconfig.dart';

const baseApiURL = "https://pokeapi.co/api/v2/pokemon";

const baseImageURL =
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<PokemonBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<PokemonDetailsBloc>()
            ..add(const PokemonDetailsEvent.watchUserPokemon()),
        )
      ],
      child: DefaultBottomBarController(
        child: HomePageBody(),
      ),
    );
  }
}

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonBloc, PokemonState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: kBackgroundColor,
            extendBody: true,
            body: Stack(
              children: [
                Positioned(
                  right: -105,
                  top: -65,
                  child: Transform.rotate(
                    angle: -0.75,
                    child: Opacity(
                      opacity: 0.25,
                      child: Image.asset(
                        'assets/images/pokeball_bg.png',
                        width: SizeConfig.safeBlockVertical * 290,
                        height: SizeConfig.safeBlockVertical * 290,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.safeBlockVertical * 40,
                        bottom: SizeConfig.safeBlockVertical * 30,
                        left: SizeConfig.safeBlockHorizontal * 25,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'PokéDex',
                              style: TextStyle(
                                fontFamily: 'NimbusMono',
                                fontSize: 52,
                                fontWeight: FontWeight.bold,
                                color: kAccentColor,
                              ),
                            ),
                            Text(
                              "Gotta Catch 'Em All",
                              style: TextStyle(
                                fontFamily: 'NimbusMono',
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.safeBlockHorizontal * 20,
                        right: SizeConfig.safeBlockHorizontal * 20,
                        bottom: SizeConfig.safeBlockVertical * 10,
                      ),
                      child: SearchBar(),
                    ),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical * 25,
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          if (state.isFetching)
                            Center(
                              child: SpinKitDoubleBounce(
                                color: Colors.white,
                                size: SizeConfig.safeBlockVertical * 75,
                              ),
                            ),
                          PokemonCard(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: GestureDetector(
              child: SizedBox(
                height: SizeConfig.safeBlockVertical * 60,
                width: SizeConfig.safeBlockVertical * 60,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    //Set onPressed event to swap state of bottom bar
                    DefaultBottomBarController.of(context).swap();
                  },
                  label: const Icon(
                    MaterialCommunityIcons.pokeball,
                    color: Colors.white,
                    size: 40,
                  ),
                  elevation: 2,
                  backgroundColor: Colors.deepOrange,
                ),
              ),
            ),

            // Actual expandable bottom bar
            bottomNavigationBar: PokemonCollection(),
          ),
        );
      },
    );
  }
}
