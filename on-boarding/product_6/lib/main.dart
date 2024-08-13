import 'package:flutter/material.dart';
import 'app.dart';

import 'injection_container.dart' as di;

Future<void> main() async {
  await di.init();
  runApp(App());
}
