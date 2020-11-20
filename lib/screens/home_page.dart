import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//=================MY OWN IMPORTS=======================
import 'package:alluredesigns/components/app_drawer.dart';
import 'package:alluredesigns/components/image_carousel.dart';
import 'package:alluredesigns/components/horizontal_list_view.dart';
import 'package:alluredesigns/components/products.dart';
import 'package:alluredesigns/components/customize_your_design.dart';
import 'package:alluredesigns/components/constants.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  final User user;
  HomeScreen({this.user});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: kHomeAppBar,
      drawer: AppDrawer(),
      body: ListView(
        children: [
          imageCarousel,
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CustomizeYourDesign(),
          ),
          HorizontalListView(),
          Products(),
        ],
      ),
    );
  }
}
