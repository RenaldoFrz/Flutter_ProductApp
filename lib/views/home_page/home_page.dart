import 'package:flutter/material.dart';

import 'componets/body.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/home_page";
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}