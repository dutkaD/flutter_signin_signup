import 'package:intl/intl.dart';

String dateToMonthId(){
  DateTime now = DateTime.now();
  final format = DateFormat('yyyyMM');
  return format.format(now);
}