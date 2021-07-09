import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/presentation/routes/router.gr.dart' as app_router;
import 'package:pokedex/application/auth/auth_bloc.dart';
import 'package:pokedex/presentation/screens/welcome/welcome_page.dart';
import 'package:pokedex/shared/color_constants.dart';
import '../../injection.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        // statusBarBrightness: Brightness.light,
        statusBarColor: Colors.black.withOpacity(0.5),
        // statusBarIconBrightness: Brightness.light,
      ),
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PokeDex',
        theme: ThemeData.light().copyWith(
          inputDecorationTheme: InputDecorationTheme(
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 2.5,
                color: kAccentColor,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            labelStyle: const TextStyle(
              color: Colors.white,
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 2.5,
                color: kAccentColor,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 2.5,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 2.5,
                color: kAccentColor,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.black),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            elevation: 0,
            color: Colors.transparent,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
        ),
        home: WelcomePageBlocProvider(),
        builder: ExtendedNavigator.builder(
          router: app_router.Router(),
        ),
      ),
    );
  }
}
