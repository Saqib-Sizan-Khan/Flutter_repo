import 'package:intl/intl.dart';

class DateTimeFormat {

  static String dateFormatter(String dateTime) {
    if (dateTime != '') {
      DateTime ft = DateTime.parse(dateTime);
      String forecastDate = DateFormat('MMMM d').format(ft);
      return forecastDate;
    }
    return '';
  }

  static String timeFormatter(String dateTime) {
    if (dateTime != '') {
      DateTime ft = DateTime.parse(dateTime);
      String forecastDate = DateFormat.jm().format(ft);
      return forecastDate;
    }
    return '';
  }
}