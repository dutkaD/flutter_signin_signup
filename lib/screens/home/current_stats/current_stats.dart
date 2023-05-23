import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/firestore/listeners.dart';
import 'package:login_app/firestore/model/checked_in_treat.dart';
import 'package:login_app/firestore/model/planned_treat.dart';
import 'package:login_app/utility/parser.dart';

class CurrentStats extends StatefulWidget {
  const CurrentStats({Key? key}) : super(key: key);

  @override
  State<CurrentStats> createState() => _CurrentStatsState();
}

class _CurrentStatsState extends State<CurrentStats> {
  final Stream<QuerySnapshot> plannedTreats = streamPlannedTreats();
  final Stream<QuerySnapshot> checkedIn = streamCheckedInTreats();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: plannedTreats,
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot> plannedSnapshot) {
          if (plannedSnapshot.hasError) {
            return const Text('Something went wrong');
          }
          if (plannedSnapshot.connectionState == ConnectionState.waiting) {
            return Text(plannedSnapshot.connectionState.name);
          }

          List<PlannedTreat> planned = plannedSnapshot.data!.docs
              .map((DocumentSnapshot document) {
                return PlannedTreat.fromResponse(
                    document.id, document.data()! as Map<String, dynamic>);
              })
              .toList()
              .cast();
          final total = planned.fold<num>(
              0, (sum, item) => sum + (item.treatPlannedTimes ?? 0));

          return StreamBuilder<QuerySnapshot>(
            stream: checkedIn,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> history) {
              if (history.hasError) {
                return const Text('Something went wrong');
              }
              if (history.connectionState == ConnectionState.waiting) {
                return Text(history.connectionState.name);
              }

              List<CheckedInTreatDto> checkedIn = history.data!.docs
                  .map((DocumentSnapshot document) {
                    return CheckedInTreatDto.fromResponse(
                        document.id, document.data()! as Map<String, dynamic>);
                  })
                  .toList()
                  .cast();

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 25.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            getMonthAsString().toUpperCase(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ),
                      Row(
                        children: [Text("${checkedIn.length} out of ${total}")],
                      )
                    ],
                  ),
                ),
              );
            },
          );
        });
  }
}
