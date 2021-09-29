import 'package:flutter/material.dart';

import '../../../model/screen_arguments.dart';
import '../../edit_page/edit_page.dart';
import '../../../model/product.dart';
import 'home_header.dart';
import 'title_with_action.dart';
import 'user_info.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  <Widget> [
          const SizedBox(height: 15),
          const HomeHeader(),
          const SizedBox(height: 20),
          const UserInfo(),
          const SizedBox(height: 15),
          SectionTitleWithAction(
            text: 'List of Product',
            press: (){},
          ),
          const SizedBox(height: 15),
          Expanded(
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ), 
              itemBuilder: (context, index) => ItemGrid(
                product: products[index],
                press: () => Navigator.pushNamed(
                  context, 
                  EditPage.routeName,
                  arguments: ScreenArguments(products[index].title, products[index].description, products[index].price.toString())
                )
              )
            )
          )
        ],
      ),
    );
  }
}

class DetailPage {
}

class ItemGrid extends StatelessWidget {
  const ItemGrid({
    Key? key, required this.product, required this.press,
  }) : super(key: key);

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(product.images),
                  fit: BoxFit.cover
                )
              ),
            ),
            Text(
              product.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}