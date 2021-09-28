import 'package:flutter/material.dart';

import '../../../constant.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key, required this.name, required this.desc, required this.image,
  }) : super(key: key);
  final String name, desc, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Image.asset(image, height: 350, width: 300,),
        const SizedBox(height: 10),
        Text(
          name, 
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: kSecondaryDarkColor)
        ),
        Text(
          desc, 
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: kSecondaryDarkColor),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}