import 'package:easy_localization/easy_localization.dart';

extension DateTimeFormatting on DateTime {
  String toFormattedString() {
    return DateFormat('yyyy-MM-dd').format(this);
  }
}
