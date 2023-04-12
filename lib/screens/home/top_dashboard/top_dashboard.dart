import 'package:flutter/cupertino.dart';
import 'package:login_app/screens/home/top_dashboard/score_tile.dart';
import 'package:login_app/screens/home/top_dashboard/top_dashboard_tile.dart';

import 'mood_picker/mood_picker.dart';

class TopDashboard extends StatelessWidget {
  const TopDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Expanded(flex: 3, child: TopDashboardTile(child: ScoreTile())),
          Expanded(
              flex: 6,
              child: TopDashboardTile(child: MoodPicker(onMoodPicked: () {})))
        ],
      ),
    );
  }
}
