import 'package:flutter/material.dart';
import 'package:login_app/screens/home/home_screen.dart';

class AppWrapper extends StatelessWidget {
  const AppWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          child: const HomePageScreen()),
    );
  }
}
