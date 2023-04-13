import 'package:flutter/cupertino.dart';

import '../../../../common/app_localisations.dart';
import '../../../../style/style_variables.dart';
import 'mood_option.dart';

class MoodPicker extends StatelessWidget {
  final Function onMoodPicked;

  const MoodPicker({Key? key, required this.onMoodPicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locals = getAppLocalizations(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          locals?.randomQuestionHowAreYou ?? "How are you doing today?",
          textAlign: TextAlign.center,
          style: homeScreenTitleStyle,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            children: [
              Expanded(
                  child: MoodOption(
                label: locals?.answerGood ?? "GOOD",
                onTap: () {},
              )),
              Expanded(
                  child: MoodOption(
                label: locals?.answerOk ?? "OK",
                onTap: () {},
              )),
              Expanded(
                  child: MoodOption(
                label: locals?.answerUgh ?? "Ugh",
                onTap: () {},
              )),
            ],
          ),
        ),
      ],
    );
  }
}
