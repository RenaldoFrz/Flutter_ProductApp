import 'package:flutter/material.dart';

import '../../add_page/add_page.dart';
import 'icon_counter.dart';
import 'search_bar.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchBar(),
          IconCounter(
            svgSrc: 'assets/icons/bell.svg',
            numOfItems: 3,
            press: (){}
          ),
          IconCounter(
            svgSrc: 'assets/icons/plus.svg',
            press: () => Navigator.pushNamed(context, AddPage.routeName),
          ),
        ],
      ),
    );
  }
}