import 'package:flutter/material.dart';

import 'views/boarding_page/boarding_page.dart';
import 'views/edit_page/edit_page.dart';
import 'views/home_page/home_page.dart';

final Map<String, WidgetBuilder> routes = {
  BoardingPage.routeName: (context) => const BoardingPage(),
  HomePage.routeName: (context) => const HomePage(),
  EditPage.routeName: (context) => const EditPage(),
};