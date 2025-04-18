import 'package:flutter/material.dart';
import 'package:spot_light/homepages/create_page.dart';
import 'package:spot_light/homepages/main_navigation_page.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainNavigationPage(),
    );
  }
}
