import 'package:finance_concept/pages/board_page.dart';
import 'package:finance_concept/pages/card_detail_page.dart';
import 'package:finance_concept/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HomePage());
  }
}
