import 'package:flutter/cupertino.dart';

import 'mood_option.dart';

class MoodPicker extends StatelessWidget {
  const MoodPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Row(
        children: const [
          MoodOption()
        ],
      ),
    );
  }
}
