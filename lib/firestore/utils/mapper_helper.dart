import 'package:cloud_firestore/cloud_firestore.dart';

DateTime? mapToDatetime(dynamic dateValue) {
  if (dateValue == null) {
    return null;
  }
  var asTimestamp = dateValue as Timestamp;
  return asTimestamp.toDate();
}

int? mapToInteger(dynamic dateValue) {
  if (dateValue == null) {
    return null;
  }
  try {
    return dateValue.toInt();
  } catch (ex) {
    print(ex.toString());
  }
  return null;
}

bool mapToBoolean(dynamic dateValue) {
  if (dateValue == null) {
    return false;
  }
  try {
    return dateValue as bool;
  } catch (ex) {
    print(ex.toString());
  }
  return false;
}
