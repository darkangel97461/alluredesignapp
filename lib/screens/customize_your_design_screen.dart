import 'package:flutter/material.dart';

//==================MY OWN IMPORTS.======================
import 'package:alluredesigns/components/constants.dart';

class CustomizeYourDesignScreen extends StatefulWidget {
  @override
  _CustomizeYourDesignScreenState createState() =>
      _CustomizeYourDesignScreenState();
}

class _CustomizeYourDesignScreenState extends State<CustomizeYourDesignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        iconTheme: kAppBarIconTheme,
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "CUSTOMIZED",
          style: kAppBarTitleStyle,
        ),
      ),
    );
  }
}
