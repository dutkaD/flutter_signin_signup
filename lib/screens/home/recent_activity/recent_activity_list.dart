import 'package:cloud_firestore/cloud_firestore.dart';
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
        StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection("treats").snapshots(),
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return const Text("no data");
              }

              // dynamic ob = snapshot.data as dynamic;

              return Column(
                children:
                    snapshot.data!.docs.map((e) => ActivityCard(header: e["title"],
                        subheader: "x",
                        onTap: () {},
                          icon: const Icon(
                            Icons.bathtub,
                          ),
                        )).toList(),
              );

              //   ActivityCard(
              //   header: "x",
              //   subheader: "yesterday",
              //   onTap: () {},
              //   icon: const Icon(
              //     Icons.bathtub,
              //   ),
              // );
            })
      ],
    );
  }
}
