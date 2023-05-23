import '../utils/mapper_helper.dart';

class PlannedTreat {
  final String? treatId;
  final DateTime? treatCreatedOn;
  final int? treatPlannedTimes;
  final String? startMonthId;
  final bool? treatIsActive;
  final String? treatCategory;
  final String? treatFrequency;
  final String? treatIconPath;
  final String? treatTitle;


  PlannedTreat.fromResponse(this.treatId, Map<String, dynamic> dbMap)
      : treatCreatedOn = mapToDatetime(dbMap['checked_in_date']),
        treatPlannedTimes = mapToInteger(dbMap['planned_times']),
        startMonthId = dbMap['start_month'],
        treatIsActive = mapToBoolean(dbMap['treat_active']),
        treatCategory = dbMap['treat_category'],
        treatFrequency = dbMap['treat_frequency'],
        treatIconPath = dbMap['treat_icon'],
        treatTitle = dbMap['treat_title'];


  Map<String, dynamic> toMap() {
    return {
      'id': treatId,
      'checked_in_date': treatCreatedOn,
      'planned_times': treatPlannedTimes,
      'start_month': startMonthId,
      'treat_active': treatIsActive,
      'treat_category': treatCategory,
      'treat_icon': treatIconPath,
      'treat_title': treatTitle,
    };
  }

  PlannedTreat(this.treatId, this.treatCreatedOn, this.treatPlannedTimes, this.startMonthId,
      this.treatIsActive, this.treatCategory, this.treatFrequency,
      this.treatIconPath, this.treatTitle);

}