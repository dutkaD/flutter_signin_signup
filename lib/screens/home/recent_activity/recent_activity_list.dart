import 'package:flutter/material.dart';
import 'package:login_app/common/app_localisations.dart';
import 'package:login_app/common/rounded_button.dart';
import 'package:login_app/firestore/listeners.dart';

import '../../../style/style_variables.dart';
import 'event_list.dart';

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
              onTap: () {
                addTreat();
              },
              child: const Text("+"),
            ),
            CircleButton(
              onTap: () {
                // updateUser  updateUser();
              },
              child: const Text("!!!"),
            )
          ],
        ),
        EventList()

        // Column(
        //   children: [
        //     ActivityCard(
        //       header: "Take a bath",
        //       subheader: "yesterday",
        //       onTap: () {},
        //       icon: const Icon(
        //         Icons.bathtub,
        //       ),
        //     )
        //   ],
        // )
      ],
    );
  }
}
