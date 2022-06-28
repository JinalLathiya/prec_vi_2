import 'dart:collection';

import 'package:flutter/material.dart';

import 'Screens/homepage.dart';
import 'Screens/quotespage.dart';


void main() {
  runApp(
   const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const Homepage(),
        "Quotes_page": (context) => const Quotespage(),
      },
    );
  }
}
