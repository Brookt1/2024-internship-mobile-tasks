import 'package:flutter/material.dart';
import 'package:product_6/pages/add_update_page.dart';
import 'package:product_6/pages/detail_page.dart';
import 'package:product_6/pages/home_page.dart';
import 'package:product_6/pages/search_page.dart';

const String homePage = 'home';
const String detailPage = 'detail';
const String searchPage = 'search';
const String addUpdatePage = 'add';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case addUpdatePage:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            AddUpdatePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );
    case detailPage:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => DetailPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );
    case searchPage:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => SearchPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );
    case homePage:
    default:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(0.0, 1.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );
  }
}
