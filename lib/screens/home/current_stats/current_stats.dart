import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/firestore/listeners.dart';
import 'package:login_app/firestore/model/checked_in_treat.dart';
import 'package:login_app/firestore/model/planned_treat.dart';

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

              return Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ListView(
                            shrinkWrap: true,
                            children: checkedIn
                                .map((e) => ListTile(
                                      title: Text(e.plannedTreatId ?? ""),
                                      subtitle:
                                          Text(e.checkedInDate.toString()),
                                    ))
                                .toList()),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        ListView(
                          shrinkWrap: true,
                          children: plannedSnapshot.data!.docs
                              .map((DocumentSnapshot document) {
                                PlannedTreat data = PlannedTreat.fromResponse(
                                    document.id,
                                    document.data()! as Map<String, dynamic>);
                                return ListTile(
                                  title: Text(data.treatTitle ?? ""),
                                  subtitle: Text(data.startMonthId ?? ""),
                                );
                              })
                              .toList()
                              .cast(),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        });
  }
}
