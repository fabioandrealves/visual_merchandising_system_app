import 'package:intl/intl.dart';

class CurrencyFormatter {

  static String format({required String locale, required num value}) {
    return NumberFormat.simpleCurrency(locale: locale).format(value);
  }
}
