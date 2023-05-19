

import 'package:login_app/models/treat_category.dart';

class TreatDto {
  final String? id;
  final String title;
  final String icon;
  final TreatCategory category;

  TreatDto(this.id, this.title, this.icon, this.category);

  TreatDto.fromResponse(this.id, Map<String, dynamic> dbMap)
      : title = dbMap['treat_title'] ?? "unknown",
        icon = dbMap['treat_icon'] ?? "assets/treats/self-love.png",
        category = (dbMap['category'] as String?)?.toTreatCategory() ?? TreatCategory.other;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'treat_title': title,
      'treat_icon': icon,
      'treat_category': category.toString(),
    };
  }

}