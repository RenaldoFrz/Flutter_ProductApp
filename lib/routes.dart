import 'package:flutter/material.dart';
import 'package:flutter_shopping/views/add_page/add_page.dart';
import 'package:flutter_shopping/views/boarding_page/boarding_page.dart';
import 'package:flutter_shopping/views/home_page/home_page.dart';

final Map<String, WidgetBuilder> routes = {
  BoardingPage.routeName: (context) => const BoardingPage(),
  HomePage.routeName: (context) => const HomePage(),
  AddPage.routeName: (context) => const AddPage(),
};