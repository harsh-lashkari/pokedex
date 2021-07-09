import 'package:auto_route/auto_route_annotations.dart';
import 'package:pokedex/presentation/core/app_widget.dart';
import 'package:pokedex/presentation/screens/home/home_page.dart';
import 'package:pokedex/presentation/screens/pokemon/pokemon_page.dart';
import 'package:pokedex/presentation/screens/sign_in/sign_in_page.dart';
import 'package:pokedex/presentation/screens/sign_up/sign_up_page.dart';
import 'package:pokedex/presentation/screens/welcome/welcome_page.dart';
import 'package:pokedex/presentation/screens/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: AppWidget),
    MaterialRoute(page: WelcomePageBlocProvider),
    MaterialRoute(page: SignInPageBlocProvider),
    MaterialRoute(page: SignUpPageBlocProvider),
    MaterialRoute(page: HomePage),
    MaterialRoute(page: PokemonPageBlocProvider, fullscreenDialog: true),
  ],
  generateNavigationHelperExtension: true,
)
class $Router {}
