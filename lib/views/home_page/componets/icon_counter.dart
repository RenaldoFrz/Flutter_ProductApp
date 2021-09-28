import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';

class IconCounter extends StatelessWidget {
  const IconCounter({
    Key? key, required this.svgSrc, this.numOfItems = 0, required this.press,
  }) : super(key: key);
  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        clipBehavior: Clip.none, children: [
          Container(
            padding: const EdgeInsets.all(14),
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15)
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if(numOfItems != 0)
            Positioned(
              top: -3,
              right: -3,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: kSecondaryLightColor),
                ),
                child: Center(
                  child: Text(
                    '$numOfItems',
                    style: const TextStyle(
                      fontSize: 10,
                      height: 1.25,
                      color: kPrimaryLightColor,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}