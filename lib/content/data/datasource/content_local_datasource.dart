import 'dart:convert';

import 'package:flutter/services.dart';

class ContentLocalDataSource {
  const ContentLocalDataSource();

  Future<Map<String, dynamic>> loadJson(String asset) async {
    return jsonDecode(await rootBundle.loadString(asset));
  }
}
