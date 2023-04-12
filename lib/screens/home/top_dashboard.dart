import 'package:flutter/cupertino.dart';
import 'package:login_app/screens/home/mood_picker/mood_picker.dart';
import 'package:login_app/screens/home/score_tile.dart';
import 'package:login_app/screens/home/top_dashboard_tile.dart';

class TopDashboard extends StatelessWidget {
  const TopDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(flex: 3, child: TopDashboardTile(child: ScoreTile())),
            Expanded(
                flex: 6,
                child: TopDashboardTile(child: MoodPicker(onMoodPicked: () {})))
          ],
        ),
      ),
    );
  }
}
