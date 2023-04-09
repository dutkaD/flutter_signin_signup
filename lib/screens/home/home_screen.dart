import 'package:flutter/material.dart';
import 'package:login_app/screens/home/mood_picker/mood_option.dart';
import 'package:login_app/screens/home/mood_picker/mood_picker.dart';

import '../../style/style_variables.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: 0.2,
          image: AssetImage("assets/background_flowers.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(child:
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 75.0),
            child: Text("How are you doing today?",
              textAlign: TextAlign.center,
              style: homeScreenTitleStyle,
            ),
          )),
          MoodPicker()
        ],
      )
      ),
    );
  }
}
