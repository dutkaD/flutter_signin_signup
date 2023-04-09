enum MoodType { good, ok, ugh, unknown }


extension MoodExtension on MoodType {
  String get label {
    switch (this) {
      case MoodType.good:
        return 'GOOD';
      case MoodType.ok:
        return 'OK';
      case MoodType.ugh:
        return 'Ugh';
      default:
        throw Exception("Couldn't map rearing!");
    }
  }
}