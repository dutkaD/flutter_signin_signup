import 'package:flutter/cupertino.dart';

import 'domain_checked_treat.dart';

class TreatStat {
  final String plannedId;
  final List<DomainCheckedTreat> plannedCheckedIn;
  final String plannedTitle;
  final Widget plannedIcon;
  final int plannedTimes;

  TreatStat(this.plannedId, this.plannedCheckedIn, this.plannedTitle,
      this.plannedIcon, this.plannedTimes);
}
