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
  if (settings.name == addUpdatePage) {
    return MaterialPageRoute(builder: (context) => AddUpdatePage());
  } else if (settings.name == detailPage) {
    return MaterialPageRoute(builder: (context) => DetailPage());
  } else if (settings.name == searchPage) {
    return MaterialPageRoute(builder: (context) => SearchPage());
  } else {
    return MaterialPageRoute(builder: (context) => HomePage());
  }
}
