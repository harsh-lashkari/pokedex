import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:pokedex/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pokedex/injection.dart';
import 'package:pokedex/presentation/screens/sign_in/widgets/sign_in_form.dart';
import 'package:pokedex/shared/color_constants.dart';
import 'package:pokedex/shared/sizeconfig.dart';
import 'package:pokedex/shared/text_style_constants.dart';

class SignInPageBlocProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: SignInPage(),
    );
  }
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            SizeConfig.safeBlockVertical * 75,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBar(
                centerTitle: true,
                title: const Text(
                  'Sign In',
                  style: kAppBarTextStyle,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.safeBlockVertical * 10,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: SignInForm(),
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 25,
                ),
                Hero(
                  tag: 'welcome-illustration',
                  child: Image.asset(
                    'assets/images/charizard.png',
                    width: SizeConfig.safeBlockVertical * 330,
                    height: SizeConfig.safeBlockVertical * 330,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 50,
                ),
                GestureDetector(
                  onTap: () {
                    context.read<SignInFormBloc>().add(
                          const SignInFormEvent
                              .signInWithEmailAndPasswordPressed(),
                        );
                  },
                  child: Container(
                    height: SizeConfig.safeBlockVertical * 60,
                    width: SizeConfig.safeBlockHorizontal * 375,
                    decoration: BoxDecoration(
                      color: kAccentColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'SIGN IN',
                          style: kButtonTextStyle,
                        ),
                        SizedBox(
                          width: SizeConfig.safeBlockHorizontal * 75,
                        ),
                        const Icon(
                          FeatherIcons.arrowRight,
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
    );
  }
}
