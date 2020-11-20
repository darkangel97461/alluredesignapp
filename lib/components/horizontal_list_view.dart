import 'package:flutter/material.dart';

//====================MY OWN IMPORTS=======================
import 'package:alluredesigns/components/constants.dart';

class HorizontalListView extends StatefulWidget {
  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        height: 50.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              width: 10.0,
            ),
            Category(
              text: "Bridal Wears",
              image: 'images/bridalwear.png',
            ),
            SizedBox(
              width: 8.0,
            ),
            Category(
              text: "Party Wear",
              image: 'images/partywear.png',
            ),
            SizedBox(
              width: 8.0,
            ),
            Category(
              text: "Kids",
              image: 'images/kidswear.png',
            ),
            SizedBox(
              width: 8.0,
            ),
            Category(
              text: "Casual Wear",
              image: 'images/dailywear.jpeg',
            ),
            SizedBox(
              width: 8.0,
            ),
            Category(
              text: "Daily Wear",
              image: 'images/casualwear.jpeg',
            ),
            SizedBox(
              width: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}

class Category extends StatefulWidget {
  final text;
  final image;

  Category({
    @required this.text,
    @required this.image,
  });

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: kDefaultBorderRadius,
      child: Container(
        width: 150.0,
        decoration: BoxDecoration(
          borderRadius: kDefaultBorderRadius,
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.8),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
