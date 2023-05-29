import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/firestore/model/checked_in_treat.dart';
import 'package:login_app/firestore/model/planned_treat.dart';

class ExpandedStats extends StatefulWidget {
  final List<CheckedInTreatDto> checkedInTreats;
  final List<PlannedTreat> plannedTreats;
  final int calculatedTotal;

  const ExpandedStats(
      {Key? key, required this.checkedInTreats, required this.plannedTreats, required this.calculatedTotal})
      : super(key: key);

  @override
  State<ExpandedStats> createState() => _ExpandedStatsState();
}

class _ExpandedStatsState extends State<ExpandedStats> {

  bool showExpanded = false;


  bool _isAllPlannedCheckedIn(){
    return widget.checkedInTreats.length >= widget.calculatedTotal;
  }

  Widget _showExpandedList(){
    return Column(
      children: const [
        Placeholder(fallbackHeight: 20,),
        Placeholder(fallbackHeight: 20,),
        Placeholder(fallbackHeight: 20,),
        Placeholder(fallbackHeight: 20,),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onHorizontalDragDown: (details){
            setState(() {
              showExpanded = !showExpanded;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  _isAllPlannedCheckedIn() ? "see history" : "see all",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade500, // Set the border color
                  ),
                ),
                Icon(
                  size: 16,
                  color: Colors.grey.shade500, // Set the border color
                  Icons.arrow_downward, // Specify the arrow down icon
                ),
              ],
            ),
          ),
        ),

        showExpanded ? _showExpandedList() : const SizedBox()
      ],
    );
  }
}
