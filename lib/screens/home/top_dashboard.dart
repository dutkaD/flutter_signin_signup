
import 'package:flutter/cupertino.dart';
import 'package:login_app/screens/home/mood_picker/mood_picker.dart';
import 'package:login_app/screens/home/score_tile.dart';
import 'package:login_app/screens/home/top_dashboard_tile.dart';

class TopDashboard extends StatelessWidget {
  const TopDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: TopDashboardTile(child: const ScoreTile())),
            Expanded(child: TopDashboardTile(child: MoodPicker(onMoodPicked: (){})))
          ],
        ),
      ),
    );
  }
}
