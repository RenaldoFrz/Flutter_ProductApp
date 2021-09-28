import 'package:flutter/material.dart';

import '../constant.dart';

class BoardingButton extends StatelessWidget {
  const BoardingButton({
    Key? key, required this.text, required this.press,
  }) : super(key: key);

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
        ),
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: kSecondaryLightColor)),
        onPressed: press,
      ),
    );
  }
}