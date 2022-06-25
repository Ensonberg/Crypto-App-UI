import "package:intl/intl.dart";

class Util {
  static String formatDouble(double data) {
    var formatter = NumberFormat('#,###');

    return formatter.format(data).replaceAll(',', ' ');
  }
}
