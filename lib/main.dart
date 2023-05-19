import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/app_wrapper.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'),
          Locale('uk'),
        ],
        locale: const Locale('uk'),
        theme: ThemeData(
          primarySwatch: mycolor,
          fontFamily: GoogleFonts.raleway().fontFamily,
        ),
        home: const AppWrapper());
  }
}

const rgboColor = Color.fromRGBO(212, 140, 83, 1.0);

MaterialColor mycolor = MaterialColor(
  rgboColor.value,
  <int, Color>{
    50: const Color.fromRGBO(137, 87, 0, 1.0),
    100: const Color.fromRGBO(137, 87, 0, 1.0),
    200: const Color.fromRGBO(137, 87, 0, 1.0),
    300: const Color.fromRGBO(137, 87, 0, 1.0),
    400: const Color.fromRGBO(137, 87, 0, 1.0),
    500: rgboColor.withOpacity(0.7),
    600: const Color.fromRGBO(137, 87, 0, 1.0),
    700: const Color.fromRGBO(137, 87, 0, 1.0),
    800: const Color.fromRGBO(137, 87, 0, 1.0),
    900: const Color.fromRGBO(68, 44, 3, 1.0),
  },
);
