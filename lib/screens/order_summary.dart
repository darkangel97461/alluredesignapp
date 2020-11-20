import 'package:flutter/material.dart';

//=========================MY OWN IMPORTS.=========================
import 'package:alluredesigns/components/constants.dart';

class OrderSummaryScreen extends StatefulWidget {
  @override
  _OrderSummaryScreenState createState() => _OrderSummaryScreenState();
}

class _OrderSummaryScreenState extends State<OrderSummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        iconTheme: kAppBarIconTheme,
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "ORDER SUMMARY",
          style: kAppBarTitleStyle,
        ),
      ),
    );
  }
}
