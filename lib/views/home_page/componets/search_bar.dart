import 'package:flutter/material.dart';

import '../../../constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      //height: 50,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15)
      ),
      child: TextField(
        decoration: const InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Search',
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          )
        ),
        onChanged: (value){},
      ),
    );
  }
}