import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/bloc/app_user_state.dart';
import 'package:login_app/screens/home/random_bit/quote_widget.dart';
import 'package:login_app/screens/home/top_dashboard/top_dashboard.dart';
import 'package:login_app/screens/home/treats_overview/treat_overview_tile.dart';
import 'package:login_app/screens/home/treats_overview/treats_overview.dart';

import '../../bloc/app_user_bloc.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppUserBloc, AppUserState>(
      builder: (context, userstate) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: Container(
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
                children: const [
                  TopDashboard(),
                  RandomQuote(),
                  TreatsOverview()

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
