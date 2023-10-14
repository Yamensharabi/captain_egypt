import 'package:captain_egypt/core/services/my_services.dart';
import 'package:flutter/material.dart';

import 'my_app.dart';

void main() async {
  await initialServices();
  runApp(const MyApp());
}
