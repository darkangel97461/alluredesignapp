import 'package:flutter/material.dart';

var kCartProducts = [
  {
    "name": "Lehenga 1",
    "picture": "images/lehenga1.jpeg",
    "price": 3500,
    "quantity": 2,
    "size": "M",
    "color": "Red",
  },
];

var kCategoryList = [
  {
    "name": "Bridal Wears",
    "picture": "images/bridalcategory.jpeg",
  },
  {
    "name": "Casual Wears",
    "picture": "images/bridal2.jpeg",
  },
  {
    "name": "Party Wears",
    "picture": "images/bridal2.jpeg",
  },
  {
    "name": "Kids Wear",
    "picture": "images/bridal2.jpeg",
  },
  {
    "name": "Daily Wears",
    "picture": "images/bridal2.jpeg",
  },
  {
    "name": "Sarees",
    "picture": "images/bridal2.jpeg",
  },
  {
    "name": "Churidars",
    "picture": "images/bridal2.jpeg",
  },
  {
    "name": "Anarkali",
    "picture": "images/bridal2.jpeg",
  },
  {
    "name": "Lehenga",
    "picture": "images/bridal2.jpeg",
  },
  {
    "name": "Kurta",
    "picture": "images/bridal2.jpeg",
  },
];
var kProductList = [
  {
    "name": "Lehenga 1",
    "picture": "images/lehenga1.jpeg",
    "old_price": 7000,
    "price": 3500,
  },
  {
    "name": "Lehenga 2",
    "picture": "images/lehenga2.jpeg",
    "old_price": 7000,
    "price": 3500,
  },
  {
    "name": "Bridal 1",
    "picture": "images/bridal1.jpeg",
    "old_price": 7000,
    "price": 3500,
  },
  {
    "name": "Bridal 2",
    "picture": "images/bridal2.jpeg",
    "old_price": 7000,
    "price": 3500,
  },
  {
    "name": "Lehenga 1",
    "picture": "images/lehenga1.jpeg",
    "old_price": 7000,
    "price": 3500,
  },
  {
    "name": "Lehenga 2",
    "picture": "images/lehenga2.jpeg",
    "old_price": 7000,
    "price": 3500,
  },
  {
    "name": "Bridal 1",
    "picture": "images/bridal1.jpeg",
    "old_price": 7000,
    "price": 3500,
  },
  {
    "name": "Bridal 2",
    "picture": "images/bridal2.jpeg",
    "old_price": 7000,
    "price": 3500,
  },
  {
    "name": "Lehenga 1",
    "picture": "images/lehenga1.jpeg",
    "old_price": 7000,
    "price": 3500,
  },
  {
    "name": "Lehenga 2",
    "picture": "images/lehenga2.jpeg",
    "old_price": 7000,
    "price": 3500,
  },
  {
    "name": "Bridal 1",
    "picture": "images/bridal1.jpeg",
    "old_price": 7000,
    "price": 3500,
  },
  {
    "name": "Bridal 2",
    "picture": "images/bridal2.jpeg",
    "old_price": 7000,
    "price": 3500,
  },
];

const kSearchInputDecoration = InputDecoration(
  isDense: true,
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.search,
    color: Colors.grey,
  ),
  hintText: "Search for your Designs",
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  contentPadding: EdgeInsets.only(
    top: 20.0,
    left: 10.0,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
    borderSide: BorderSide.none,
  ),
);

const kDefaultBorderRadius = BorderRadius.all(
  Radius.circular(20.0),
);

const kOurThemeColor = Color(0xFF626ABB);

var kHomeAppBar = AppBar(
  elevation: 0.5,
  iconTheme: IconThemeData(
    color: Colors.black,
  ),
  centerTitle: true,
  backgroundColor: Color(0xFFFFFFFF),
  title: Text(
    "Allure Designs",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 30.0,
      fontFamily: "Sacramento",
      letterSpacing: 1.0,
    ),
  ),
  actions: [
    IconButton(
      icon: Icon(
        Icons.search,
        color: Colors.black,
      ),
      onPressed: () {},
    ),
  ],
);

const kAppBarTitleStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontSize: 23.0,
  fontFamily: "Raleway",
  letterSpacing: 1.0,
);

const kAppBarIconTheme = IconThemeData(
  color: Colors.black,
);
