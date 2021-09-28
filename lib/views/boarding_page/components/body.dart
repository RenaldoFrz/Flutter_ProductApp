import 'package:flutter/material.dart';

import '../../home_page/home_page.dart';
import '../../../widget/boarding_button.dart';
import '../../../constant.dart';
import '../../../model/boarding_data.dart';
import 'boarding_content.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                children: const <Widget> [
                  SizedBox(height: 35),
                  Text(
                    'Elextronic Shop', 
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: kPrimaryColor)
                  ),
                  Text(
                    'Welcome to online shop, Happy Shopping!', 
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: kSecondaryDarkColor)
                  ),
                ],
              )
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: boardingData.length,
                itemBuilder: (context, index) => SplashContent(
                  name: boardingData[index]["text"],
                  desc: boardingData[index]["desc"],
                  image: boardingData[index]["image"],
                ),
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
              )
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(boardingData.length, (index) => buildDot(index: index)),
                  ),
                  const Spacer(),
                    BoardingButton(
                      text: "Continue",
                      press: () => Navigator.pushReplacementNamed(context, HomePage.routeName),
                    ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    )
  );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kSecondaryDarkColor : kPrimaryColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}