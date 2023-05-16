import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/bloc/app_user_state.dart';
import 'package:login_app/screens/home/random_bit/quote_widget.dart';
import 'package:login_app/screens/home/recent_activity/recent_activity_list.dart';
import 'package:login_app/screens/home/top_dashboard/top_dashboard.dart';
import 'package:login_app/screens/home/treats_overview/treats_overview.dart';

import '../../bloc/app_user_bloc.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppUserBloc, AppUserState>(
      builder: (context, userstate) {
        return SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                opacity: 0.2,
                image: AssetImage("assets/background_flowers.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    TopDashboard(),
                    RandomQuote(),
                    TreatsOverview(),
                    RecentActivityList()


                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
