import 'package:flutter/material.dart';

import '../../../common/app_localisations.dart';

class ScoreTile extends StatelessWidget {
  const ScoreTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locals = getAppLocalizations(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          locals?.dashboardScoreLabel ?? "My score",
        ),
        const Text("10 *"),
        Text(locals?.dashboardSeeScoreHistory ?? "see history")
      ],
    );
  }
}
