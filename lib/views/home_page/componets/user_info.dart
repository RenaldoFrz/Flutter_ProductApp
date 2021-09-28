import 'package:flutter/material.dart';

import '../../../constant.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text.rich(
            TextSpan(
              text: 'Welcome back!\n',
              style: TextStyle(color: kSecondaryLightColor, fontSize: 16, fontWeight: FontWeight.w500),
              children: [
                TextSpan(
                  text: 'Renaldo Fareza',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage("assets/images/profile.jpg"),
                fit: BoxFit.fill
              )
            ),
          ),
        ],
      ),
    );
  }
}