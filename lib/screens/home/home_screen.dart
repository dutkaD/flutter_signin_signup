import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/bloc/app_user_state.dart';
import 'package:login_app/bloc/app_user_state.dart';
import 'package:login_app/screens/home/mood_picker/mood_option.dart';
import 'package:login_app/screens/home/mood_picker/mood_picker.dart';

import '../../bloc/app_user_bloc.dart';
import '../../style/style_variables.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppUserBloc, AppUserState>(
      builder: (context, userstate) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: dirtyGold.withOpacity(0.1),
            actions: [
              GestureDetector(
                onTap: () {
                  print("clicked profile");
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: CircleAvatar(
                    backgroundColor: dirtyGold.withOpacity(1.0),
                    backgroundImage: const AssetImage(
                      "assets/user_profile.png",
                    ),
                  ),
                ),
              )
            ],
          ),
          body: Container(
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
                children: [
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 75.0),
                    child: Text(
                      "How are you doing today?",
                      textAlign: TextAlign.center,
                      style: homeScreenTitleStyle,
                    ),
                  )),
                  MoodPicker(
                    onMoodPicked: () {},
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
