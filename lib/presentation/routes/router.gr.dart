// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/app_widget.dart';
import '../screens/home/home_page.dart';
import '../screens/pokemon/pokemon_page.dart';
import '../screens/sign_in/sign_in_page.dart';
import '../screens/sign_up/sign_up_page.dart';
import '../screens/splash/splash_page.dart';
import '../screens/welcome/welcome_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String appWidget = '/app-widget';
  static const String welcomePageBlocProvider = '/welcome-page-bloc-provider';
  static const String signInPageBlocProvider = '/sign-in-page-bloc-provider';
  static const String signUpPageBlocProvider = '/sign-up-page-bloc-provider';
  static const String homePage = '/home-page';
  static const String pokemonPageBlocProvider = '/pokemon-page-bloc-provider';
  static const all = <String>{
    splashPage,
    appWidget,
    welcomePageBlocProvider,
    signInPageBlocProvider,
    signUpPageBlocProvider,
    homePage,
    pokemonPageBlocProvider,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.appWidget, page: AppWidget),
    RouteDef(Routes.welcomePageBlocProvider, page: WelcomePageBlocProvider),
    RouteDef(Routes.signInPageBlocProvider, page: SignInPageBlocProvider),
    RouteDef(Routes.signUpPageBlocProvider, page: SignUpPageBlocProvider),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.pokemonPageBlocProvider, page: PokemonPageBlocProvider),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    AppWidget: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AppWidget(),
        settings: data,
      );
    },
    WelcomePageBlocProvider: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WelcomePageBlocProvider(),
        settings: data,
      );
    },
    SignInPageBlocProvider: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPageBlocProvider(),
        settings: data,
      );
    },
    SignUpPageBlocProvider: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpPageBlocProvider(),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    PokemonPageBlocProvider: (data) {
      final args =
          data.getArgs<PokemonPageBlocProviderArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => PokemonPageBlocProvider(
          key: args.key,
          apiURL: args.apiURL,
          name: args.name,
          imageURL: args.imageURL,
          index: args.index,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushAppWidget() => push<dynamic>(Routes.appWidget);

  Future<dynamic> pushWelcomePageBlocProvider() =>
      push<dynamic>(Routes.welcomePageBlocProvider);

  Future<dynamic> pushSignInPageBlocProvider() =>
      push<dynamic>(Routes.signInPageBlocProvider);

  Future<dynamic> pushSignUpPageBlocProvider() =>
      push<dynamic>(Routes.signUpPageBlocProvider);

  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushPokemonPageBlocProvider({
    Key key,
    @required String apiURL,
    @required String name,
    @required String imageURL,
    @required int index,
  }) =>
      push<dynamic>(
        Routes.pokemonPageBlocProvider,
        arguments: PokemonPageBlocProviderArguments(
            key: key,
            apiURL: apiURL,
            name: name,
            imageURL: imageURL,
            index: index),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// PokemonPageBlocProvider arguments holder class
class PokemonPageBlocProviderArguments {
  final Key key;
  final String apiURL;
  final String name;
  final String imageURL;
  final int index;
  PokemonPageBlocProviderArguments(
      {this.key,
      @required this.apiURL,
      @required this.name,
      @required this.imageURL,
      @required this.index});
}
