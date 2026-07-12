import 'package:intl/intl.dart';

String getElementLocalized(
  String key, {
  String? description,
  List<Object>? args,
}) => Intl.message("", name: key, desc: description, args: args);
