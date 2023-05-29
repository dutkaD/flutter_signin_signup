import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/domain/treat_stat.dart';
import 'package:login_app/firestore/listeners.dart';
import 'package:login_app/firestore/model/checked_in_treat.dart';
import 'package:login_app/firestore/model/planned_treat.dart';
import 'package:login_app/screens/home/current_stats/expanded_stats.dart';
import 'package:login_app/screens/home/current_stats/month_stats.dart';
import 'package:login_app/utility/parser.dart';

import '../../../domain/domain_checked_treat.dart';

class CurrentStats extends StatefulWidget {
  const CurrentStats({Key? key}) : super(key: key);

  @override
  State<CurrentStats> createState() => _CurrentStatsState();
}

class _CurrentStatsState extends State<CurrentStats> {
  final Stream<QuerySnapshot> plannedTreats = streamPlannedTreats();
  final Stream<QuerySnapshot> checkedIn = streamCheckedInTreats();


  List<TreatStat> mapTreats(List<PlannedTreat> plannedTreats, List<CheckedInTreatDto> checkedInTreats){
    List<TreatStat> treatStats = plannedTreats.map((plannedTreat) {
      String plannedId = plannedTreat.treatId!;
      String plannedTitle = plannedTreat.treatTitle!;
      Widget plannedIcon = Image.asset(plannedTreat.treatIconPath!);
      int plannedTimes = plannedTreat.treatPlannedTimes!;

      List<DomainCheckedTreat> plannedCheckedIn = checkedInTreats
          .where((checkedInTreat) => checkedInTreat.plannedTreatId == plannedId)
          .map((checkedInTreat) {
        String id = checkedInTreat.id!;
        DateTime checkedInDate = checkedInTreat.checkedInDate!;

        // Map CheckedInTreatDto to DomainCheckedTreat object
        // You can modify this mapping based on your requirements
        return DomainCheckedTreat(id, checkedInDate);
      }).toList();

      return TreatStat(
        plannedId,
        plannedCheckedIn,
        plannedTitle,
        plannedIcon,
        plannedTimes,
      );
    }).toList();

    return treatStats;
  }

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
          int total = planned
              .fold<num>(0, (sum, item) => sum + (item.treatPlannedTimes ?? 0))
              .toInt();


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

              List<TreatStat> stats = mapTreats(planned, checkedIn);


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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              getMonthAsString().toUpperCase(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                  // Set the border color
                                  width: 1.0, // Set the border width
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child:
                                    Text("${checkedIn.length} out of ${total}"),
                              ),
                            )
                          ],
                        ),
                      ),
                      MonthStats(checkedInTreats: checkedIn, plannedTreats: planned, calculatedTotal: total,),
                      ExpandedStats(checkedInTreats: checkedIn, plannedTreats: planned, calculatedTotal: total,)
                    ],
                  ),
                ),
              );
            },
          );
        });
  }
}
