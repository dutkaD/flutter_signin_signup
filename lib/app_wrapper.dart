import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/screens/auth_wrapper.dart';
import 'package:login_app/screens/home/home_screen.dart';

import 'bloc/app_user_bloc.dart';
import 'bloc/app_user_state.dart';

class AppWrapper extends StatelessWidget {
  const AppWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppUserBloc, AppUserState>(
      builder: (context, state) {
        return Scaffold(
          body: AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              child: state.name == null
                  ? const AuthWrapper()
                  : const HomePageScreen()),
        );
      },
    );
  }
}
