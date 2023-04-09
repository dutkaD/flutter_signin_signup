import 'package:flutter/cupertino.dart';

import 'mood_option.dart';

class MoodPicker extends StatelessWidget {
  final Function onMoodPicked;

  const MoodPicker({Key? key, required this.onMoodPicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Row(
        children: [
          Expanded(
              child: MoodOption(
            label: "GOOD",
            onTap: () {},
          )),
          Expanded(
              child: MoodOption(
            label: "OK",
            onTap: () {},
          )),
          Expanded(
              child: MoodOption(
            label: "Ugh",
            onTap: () {},
          )),
        ],
      ),
    );
  }
}
