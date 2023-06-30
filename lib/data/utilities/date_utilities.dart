import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class DateUtilities {
  static Timestamp get date => Timestamp.now();

  static String get monthDayYear => printDateWith(date);

  static String printDateWith(Timestamp date, {String pattern = 'MM/dd/yyyy'}) {
    final dateTime =
        DateTime.fromMicrosecondsSinceEpoch(date.millisecondsSinceEpoch * 1000);
    return DateFormat(pattern).format(dateTime);
  }
}