import 'package:flutter/material.dart';
import 'package:login_app/screens/home/random_bit/quote_widget.dart';
import 'package:login_app/screens/home/top_dashboard/top_dashboard.dart';
import 'package:login_app/screens/home/treats_overview/treats_overview.dart';

import '../../utility/parser.dart';
import 'current_stats/current_stats.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.2,
            image: AssetImage("assets/background_flowers.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(dateToMonthId()),
                const TopDashboard(),
                const RandomQuote(),
                CurrentStats(),
                TreatsOverview(),
                // RecentActivityList(),
                CurrentStats()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
