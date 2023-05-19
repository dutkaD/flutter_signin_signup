
enum TreatCategory { relax, other }



extension StringToTreatCategory on String {
  TreatCategory toTreatCategory() {
    switch (this) {
      case 'relax':
        return TreatCategory.relax;
      case 'other':
        return TreatCategory.other;
      default:
        return TreatCategory.other;
    }
  }
}






