import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/screens/auth_wrapper.dart';
import 'package:login_app/screens/sign_in/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: mycolor,
          fontFamily: GoogleFonts.raleway().fontFamily,
        ),
        home: const AuthWrapper());
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
