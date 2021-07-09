import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pokedex/application/pokemon_details/pokemon_details_bloc.dart';
import 'package:pokedex/injection.dart';
import 'package:pokedex/presentation/screens/home/home_page.dart';
import 'package:pokedex/shared/color_constants.dart';
import 'package:pokedex/shared/sizeconfig.dart';
import 'package:pokedex/shared/string_extension.dart';
import 'package:pokedex/shared/text_style_constants.dart';

class PokemonPageBlocProvider extends StatelessWidget {
  final String apiURL;
  final String name;
  final String imageURL;
  final int index;

  const PokemonPageBlocProvider({
    Key key,
    @required this.apiURL,
    @required this.name,
    @required this.imageURL,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<PokemonDetailsBloc>()
            ..add(
              PokemonDetailsEvent.started(apiURL),
            ),
        ),
      ],
      child: PokemonPage(
        pokemonName: name,
        pokemonImage: imageURL,
        index: index,
      ),
    );
  }
}

class PokemonPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final pokemonName;
  // ignore: prefer_typing_uninitialized_variables
  final pokemonImage;
  // ignore: prefer_typing_uninitialized_variables
  final index;

  const PokemonPage({
    Key key,
    @required this.pokemonName,
    @required this.pokemonImage,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
      builder: (context, state) {
        final experience = state.pokemonDetails.baseExperience;
        final height = (state.pokemonDetails.pokemonHeight.getOrCrash()) * 10;
        final weight = (state.pokemonDetails.pokemonWeight.getOrCrash()) / 10;
        // final stats = state.pokemonDetails.listPokemonStats.getOrCrash();
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: SizeConfig.safeBlockVertical * 25,
                                  left: SizeConfig.safeBlockHorizontal * 25,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      pokemonName,
                                      style: const TextStyle(
                                        fontFamily: 'NimbusMono',
                                        fontSize: 52,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      state.pokemonTypes
                                          .map(
                                            (e) => e.type.name.capitalize(),
                                          )
                                          .join(","),
                                      style: const TextStyle(
                                        fontFamily: 'NimbusMono',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: SizeConfig.safeBlockVertical * 100,
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Image.network(
                                        pokemonImage,
                                        height:
                                            SizeConfig.safeBlockVertical * 300,
                                        width:
                                            SizeConfig.safeBlockVertical * 300,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: SizeConfig.safeBlockVertical * 320,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                              color: kAccentColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: SizeConfig.safeBlockVertical * 30,
                              ),
                              child: Column(
                                children: [
                                  const Text(
                                    "POKEMON DETAILS",
                                    style: TextStyle(
                                      fontFamily: 'NimbusMono',
                                      fontSize: 27,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.safeBlockHorizontal * 300,
                                    child: const Divider(
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 15,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        "BASE EXPERIENCE",
                                        style: kPokemonDetailsLabelTextStyle,
                                      ),
                                      const Text(
                                        "(XP)",
                                        style: TextStyle(
                                          fontFamily: 'NimbusMono',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            SizeConfig.safeBlockVertical * 10,
                                      ),
                                      Text(
                                        experience.getOrCrash().toString(),
                                        style: kPokemonDetailsTextStyle,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 25,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          const Text(
                                            "HEIGHT",
                                            style:
                                                kPokemonDetailsLabelTextStyle,
                                          ),
                                          const Text(
                                            "(cm)",
                                            style: TextStyle(
                                              fontFamily: 'NimbusMono',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height:
                                                SizeConfig.safeBlockVertical *
                                                    10,
                                          ),
                                          Text(
                                            height.toString(),
                                            style: kPokemonDetailsTextStyle,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width:
                                            SizeConfig.safeBlockHorizontal * 75,
                                      ),
                                      Column(
                                        children: [
                                          const Text(
                                            "WEIGHT",
                                            style:
                                                kPokemonDetailsLabelTextStyle,
                                          ),
                                          const Text(
                                            "(kg)",
                                            style: TextStyle(
                                              fontFamily: 'NimbusMono',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height:
                                                SizeConfig.safeBlockVertical *
                                                    10,
                                          ),
                                          Text(
                                            weight.toString(),
                                            style: kPokemonDetailsTextStyle,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (state.isFetching)
                  Container(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    color: Colors.black87,
                    child: const SpinKitDoubleBounce(
                      color: Colors.white,
                    ),
                  )
                else
                  const SizedBox(),
                if (state.addingOrDeleting)
                  Container(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    color: Colors.black87,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SpinKitDoubleBounce(
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 10,
                        ),
                        const Text(
                          "Adding to collection...",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'NimbusMono',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                else
                  const SizedBox(),
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              elevation: 0,
              color: kAccentColor,
              child: GestureDetector(
                onTap: () {
                  state.listPokemonDetails.clear();
                  context.read<PokemonDetailsBloc>().add(
                      PokemonDetailsEvent.pokemonCreated(state.pokemonDetails));

                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }), (route) => false);
                },
                child: Container(
                  height: SizeConfig.safeBlockVertical * 75,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white.withOpacity(0.75),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        MaterialCommunityIcons.pokeball,
                        size: SizeConfig.safeBlockVertical * 40,
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 25,
                      ),
                      const Text(
                        "ADD TO COLLECTION",
                        style: TextStyle(
                          height: 2.5,
                          fontSize: 25,
                          fontFamily: 'NimbusMono',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
