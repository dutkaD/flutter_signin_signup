import 'package:flutter/cupertino.dart';

import '../../../style/style_variables.dart';
import 'mood_option.dart';

class MoodPicker extends StatelessWidget {
  final Function onMoodPicked;

  const MoodPicker({Key? key, required this.onMoodPicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "How are you doing today?",
          textAlign: TextAlign.center,
          style: homeScreenTitleStyle,
        ),
        Row(
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
      ],
    );
  }
}
