import 'package:intl/intl.dart';

String dateToMonthId(){
  DateTime now = DateTime.now();
  final format = DateFormat('yyyyMM');
  return format.format(now);
}

String getMonthAsString(){
  DateTime now = DateTime.now();
  DateFormat format = new DateFormat("MMMM");
  return format.format(now);
}
