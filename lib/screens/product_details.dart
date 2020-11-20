import 'package:flutter/material.dart';

//==================MY OWN IMPORTS====================
import 'package:alluredesigns/components/constants.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:alluredesigns/components/add_sub_section.dart';

class ProductDetails extends StatefulWidget {
  final productName;
  final productPicture;
  final productPrice;
  final productOldPrice;

  ProductDetails({
    @required this.productName,
    @required this.productPrice,
    @required this.productPicture,
    @required this.productOldPrice,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool favoriteButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(""),
        iconTheme: kAppBarIconTheme,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              elevation: 2.0,
              borderRadius: kDefaultBorderRadius,
              child: Stack(
                children: [
                  Container(
                    height: 400.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: kDefaultBorderRadius,
                      child: Carousel(
                        dotColor: Colors.white,
                        dotIncreasedColor: Colors.white,
                        dotBgColor: Colors.transparent,
                        autoplay: false,
                        images: [
                          Image.asset(
                            widget.productPicture,
                            fit: BoxFit.contain,
                          ),
                          Image.asset(
                            'images/lehenga2.jpeg',
                            fit: BoxFit.contain,
                          ),
                          Image.asset(
                            'images/carousel1.jpg',
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 11,
                    right: 15,
                    child: IconButton(
                      icon: favoriteButton
                          ? Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : Icon(
                              Icons.favorite,
                              color: Colors.grey,
                            ),
                      onPressed: () {
                        setState(() {
                          if (favoriteButton == false) {
                            favoriteButton = true;
                          } else {
                            favoriteButton = false;
                          }
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              left: 8.0,
              right: 8.0,
              bottom: 10.0,
            ),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              child: Container(
                height: 700.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "White Bridal Lehenga with Digital Art",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70.0,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: MaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          height: 50.0,
          elevation: 0.0,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddSubSection(),
            );
          },
          color: kOurThemeColor,
          textColor: Colors.white,
          child: Text(
            "Add to Cart",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Raleway",
              fontSize: 27.0,
            ),
          ),
        ),
      ),
    );
  }
}
