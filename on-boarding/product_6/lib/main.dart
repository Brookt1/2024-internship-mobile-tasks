import 'package:flutter/material.dart';
import 'route/route.dart' as route;

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      onGenerateRoute: route.controller,
      initialRoute: route.homePage,
    ),
  );
}
