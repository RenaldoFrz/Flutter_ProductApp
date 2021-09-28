import 'package:flutter/material.dart';
import 'components/body.dart';

class BoardingPage extends StatelessWidget {
  static String routeName = "/boarding_page";
  const BoardingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}