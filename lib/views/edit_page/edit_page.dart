import 'package:flutter/material.dart';
import 'package:flutter_shopping/constant.dart';
import 'package:flutter_shopping/model/product.dart';
import 'package:flutter_shopping/views/edit_page/components/body.dart';

class EditPage extends StatelessWidget {
  static String routeName = "/edit_page";
  final Product product; 

  const EditPage({ Key? key, required this.product }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerDetail(context),
      body: Body(product: product),
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
      title: const Text('Details Product', style: TextStyle(fontSize: 18, color: kSecondaryDarkColor),),
    );
  }
}