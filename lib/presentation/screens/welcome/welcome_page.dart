import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pokedex/application/auth/auth_bloc.dart';
import 'package:pokedex/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pokedex/injection.dart';
import 'package:pokedex/presentation/routes/router.gr.dart';
import 'package:pokedex/presentation/screens/sign_in/sign_in_page.dart';
import 'package:pokedex/presentation/screens/sign_up/sign_up_page.dart';
import 'package:pokedex/shared/color_constants.dart';
import 'package:pokedex/shared/sizeconfig.dart';
import 'package:pokedex/shared/text_style_constants.dart';

class WelcomePageBlocProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'CANCELLED',
                  serverError: (_) => 'SERVER ERROR',
                  emailAlreadyInUse: (_) => 'EMAIL ALREADY IN USE',
                  invalidEmailAndPasswordCombination: (_) =>
                      'INVALID EMAIL AND PASSWORD COMBINATION',
                ),
              ).show(context);
            },
            (_) {
              ExtendedNavigator.of(context).replace(
                Routes.homePage,
              );
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            resizeToAvoidBottomInset: true,
            backgroundColor: kBackgroundColor,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.safeBlockVertical * 30,
                    left: SizeConfig.safeBlockHorizontal * 25,
                  ),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Welcome To',
                      style: TextStyle(
                        fontFamily: 'NimbusMono',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.safeBlockHorizontal * 25,
                  ),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'PokéDex',
                      style: TextStyle(
                        fontFamily: 'NimbusMono',
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                        color: kAccentColor,
                      ),
                    ),
                  ),
                ),
                Hero(
                  tag: 'welcome-illustration',
                  child: Image.asset(
                    'assets/images/trainer.png',
                    width: SizeConfig.blockSizeVertical * 330,
                    height: SizeConfig.blockSizeVertical * 330,
                  ),
                ),
                if (state.isSubmitting) ...[
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 25,
                  ),
                  const LinearProgressIndicator(
                    backgroundColor: kAccentColor,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ],
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 20,
                ),
                GestureDetector(
                  onTap: () {
                    context.read<SignInFormBloc>().add(
                          const SignInFormEvent.signInWithGooglePressed(),
                        );
                  },
                  child: Container(
                    height: SizeConfig.safeBlockVertical * 60,
                    width: SizeConfig.safeBlockHorizontal * 375,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage('assets/images/google.png'),
                            height: SizeConfig.safeBlockVertical * 25,
                            width: SizeConfig.safeBlockVertical * 25,
                          ),
                          SizedBox(
                            width: SizeConfig.safeBlockHorizontal * 20,
                          ),
                          const Text(
                            'Sign In With Google',
                            style: TextStyle(
                              height: 2.5,
                              fontFamily: 'NimbusMono',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 25,
                ),
                GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    Navigator.push(
                      context,
                      PageTransition(
                        child: SignInPageBlocProvider(),
                        type: PageTransitionType.rightToLeftWithFade,
                      ),
                    );
                  },
                  child: Container(
                    height: SizeConfig.safeBlockVertical * 60,
                    width: SizeConfig.safeBlockHorizontal * 375,
                    decoration: BoxDecoration(
                      color: kAccentColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FeatherIcons.mail,
                            size: SizeConfig.safeBlockVertical * 25,
                          ),
                          SizedBox(
                            width: SizeConfig.safeBlockHorizontal * 20,
                          ),
                          const Text(
                            'Sign In With Email',
                            style: kButtonTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.safeBlockVertical * 25,
                    bottom: SizeConfig.safeBlockVertical * 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontFamily: 'NimbusMono',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              child: SignUpPageBlocProvider(),
                              type: PageTransitionType.rightToLeftWithFade,
                            ),
                          );
                        },
                        child: const Text(
                          "SignUp",
                          style: TextStyle(
                            fontFamily: 'NimbusMono',
                            letterSpacing: 2.5,
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
