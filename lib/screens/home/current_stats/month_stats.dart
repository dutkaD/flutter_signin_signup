


import 'package:flutter/cupertino.dart';
import 'package:login_app/firestore/model/planned_treat.dart';

import '../../../firestore/model/checked_in_treat.dart';

class MonthStats extends StatelessWidget {
  final List<CheckedInTreatDto> checkedInTreats;
  final List<PlannedTreat> plannedTreats;
  final int calculatedTotal;

  const MonthStats({Key? key, required this.checkedInTreats, required this.plannedTreats, required this.calculatedTotal}) : super(key: key);



  bool _isAnythingPlanned(){
    return calculatedTotal != 0;
  }

  bool _isAllPlannedCheckedIn(){
    return plannedTreats.length >= calculatedTotal;
  }

  Widget _showNonePlanned(){
    return Row(
      children: const [
        Text("Nothing planned yet")
      ],
    );
  }
  Widget _showStats(){
    if (_isAllPlannedCheckedIn()) {
      return Row(
        children: const [
          Flexible(
              child: Text("Nicely done! This month's treats are all complete!"))
        ],
      );
    } else {
        return Text("${plannedTreats.length} out of $calculatedTotal");
    }

  }


  @override
  Widget build(BuildContext context) {
    return _isAnythingPlanned() ? _showStats() : _showNonePlanned();
  }
}
