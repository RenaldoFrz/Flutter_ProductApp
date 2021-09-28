import 'package:flutter/material.dart';

import '../../../constant.dart';

class SectionTitleWithAction extends StatelessWidget {
  const SectionTitleWithAction({
    Key? key, required this.text, required this.press,
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
           Text(
            text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: kSecondaryDarkColor),
            textAlign: TextAlign.left,
          ),
          GestureDetector(
            onTap: press,
            child: const Text(
              'see more',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: kSecondaryDarkColor),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}