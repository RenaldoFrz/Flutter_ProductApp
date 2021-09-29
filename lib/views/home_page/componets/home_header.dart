import 'package:flutter/material.dart';
import 'package:flutter_shopping/model/screen_arguments.dart';
import 'package:flutter_shopping/views/edit_page/edit_page.dart';

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
            press: () => Navigator.pushNamed(
              context, 
              EditPage.routeName, 
              arguments: ScreenArguments("", "", "")
            ),
          ),
        ],
      ),
    );
  }
}