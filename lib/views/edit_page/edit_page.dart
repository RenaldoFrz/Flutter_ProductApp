import 'package:flutter/material.dart';

import '../../constant.dart';
import 'components/body.dart';

class EditPage extends StatelessWidget {
  static String routeName = "/edit_page";

  const EditPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: headerDetail(context),
      body: const Body(),
    );
  }

  AppBar headerDetail(BuildContext context) {
    return AppBar(
      backgroundColor: kSecondaryLightColor,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: kSecondaryColor,
        onPressed: () => Navigator.pop(context),
      ),
      title: const Text('Product', style: TextStyle(fontSize: 18, color: kSecondaryDarkColor),),
    );
  }
}