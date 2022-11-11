//import 'package:flutter_application_7_navigation_24_10_2022/pages/home_page.dart';
import 'package:trabajo_individual_interfaces/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}