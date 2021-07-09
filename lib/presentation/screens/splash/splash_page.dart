import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/application/auth/auth_bloc.dart';
import 'package:pokedex/presentation/routes/router.gr.dart';
import 'package:pokedex/shared/color_constants.dart';
import 'package:pokedex/shared/sizeconfig.dart';
import 'package:pokedex/shared/text_style_constants.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            authenticated: (_) async {
              await Future.delayed(
                const Duration(milliseconds: 3250),
              );
              // print('I AM AUTHENTICATED');
              // ExtendedNavigator.of(context).replace();
              ExtendedNavigator.of(context).replace(
                Routes.homePage,
              );
            },
            unauthenticated: (_) async {
              await Future.delayed(
                const Duration(milliseconds: 3250),
              );
              ExtendedNavigator.of(context).replace(
                Routes.welcomePageBlocProvider,
              );
            });
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kAccentColor,
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'PokéDex',
                  style: kSplashScreenTextStyle,
                ),
                // SizedBox(
                //   height: SizeConfig.safeBlockVertical * 10,
                // ),
                const Text(
                  "Gotta Catch 'Em All",
                  style: kTaglineTextStyle,
                ),

                SizedBox(
                  height: SizeConfig.safeBlockVertical * 100,
                ),
                const Image(
                  image: AssetImage('assets/images/pokeball_loader_alt.gif'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
