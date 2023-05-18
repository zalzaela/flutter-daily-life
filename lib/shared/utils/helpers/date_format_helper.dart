import 'package:intl/intl.dart';

class DateFormatHelper {
  static readableDateTime(DateTime? dateTime) {
    DateFormat dateFormat = DateFormat('d MMMM y H:mm');

    String formattedDateTime =
        ((dateTime != null) ? dateFormat.format(dateTime) : "");

    return formattedDateTime;
  }

  static toDateTime(DateTime dateTime) {
    DateFormat dateFormat = DateFormat('yyyy-MM-dd HH:mm:ss', 'id_ID');

    String formattedDateTime = dateFormat.format(dateTime);
    DateTime toDateTime = dateFormat.parse(formattedDateTime);

    return toDateTime;
  }
}
