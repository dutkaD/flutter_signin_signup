import 'package:flutter/material.dart';
import 'package:login_app/common/app_localisations.dart';
import 'package:login_app/common/rounded_button.dart';

import '../../../style/style_variables.dart';
import 'activity_card.dart';

class RecentActivityList extends StatelessWidget {
  const RecentActivityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locals = getAppLocalizations(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(locals?.recentTreats ?? "Recent treats", style: headerStyle),
            CircleButton(
              onTap: () {},
              child: const Text("+"),
            )
          ],
        ),
        Column(
          children: [
            ActivityCard(
              header: "Take a bath",
              subheader: "yesterday",
              onTap: () {},
              icon: const Icon(
                Icons.bathtub,
              ),
            )
          ],
        )
      ],
    );
  }
}
