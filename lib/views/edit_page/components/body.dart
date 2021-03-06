import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../model/screen_arguments.dart';

class Body extends StatelessWidget {
  const Body({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Text('Title of Product', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15)
          ),
          child: TextFormField(
            maxLines: 1,
            initialValue: args.title,
            decoration: const InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 15,
              )
            ),
          ),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Text('Description of Product', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15)
          ),
          child: TextFormField(
            maxLines: 3,
            initialValue: args.description,
            decoration: const InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 15,
              )
            ),
          ),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Text('Price of Product', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15)
          ),
          child: TextFormField(
            maxLines: 1,
            initialValue: args.price,
            decoration: const InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 15,
              )
            ),
          ),
        ),
      ],
    );
  }
}