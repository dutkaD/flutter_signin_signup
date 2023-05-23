import 'package:login_app/firestore/utils/mapper_helper.dart';

class CheckedInTreatDto {
  final String? id;
  final DateTime? checkedInDate;
  final String? plannedTreatId;

  CheckedInTreatDto(this.id, this.checkedInDate, this.plannedTreatId);

  CheckedInTreatDto.fromResponse(this.id, Map<String, dynamic> dbMap)
      : checkedInDate = mapToDatetime(dbMap['checked_in_date']),
        plannedTreatId = dbMap['planned_treat_id'];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'checked_in_date': checkedInDate,
      'planned_treat_id': plannedTreatId,
    };
  }
}
