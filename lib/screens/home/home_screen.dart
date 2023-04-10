import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/bloc/app_user_state.dart';

import 'package:login_app/screens/home/mood_picker/mood_picker.dart';
import 'package:login_app/screens/home/top_dashboard.dart';

import '../../bloc/app_user_bloc.dart';
import '../../style/style_variables.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppUserBloc, AppUserState>(
      builder: (context, userstate) {
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const TopDashboard(),

              ],
            ),
          ),
        );
      },
    );
  }
}
