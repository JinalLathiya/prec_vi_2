import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/quotes_helper.dart';
import '../models/quotes_model.dart';

class Quotespage extends StatefulWidget {
  const Quotespage({Key? key}) : super(key: key);

  @override
  State<Quotespage> createState() => _QuotespageState();
}

class _QuotespageState extends State<Quotespage> {
  late Future<List<Quotes>> getAllData;

  List number = [0, 1, 2, 3, 4];

  int firstNumber = 0;

  Random r1 = Random();

  @override
  void initState() {
    DBHelper.dbHelper.insert1();
    DBHelper.dbHelper.insert2();
    DBHelper.dbHelper.insert3();
    DBHelper.dbHelper.insert4();
    DBHelper.dbHelper.insert5();
    getAllData = DBHelper.dbHelper.fetchData();

    Timer(const Duration(seconds: 10), () {
      int i1 = r1.nextInt(5);
      setState(() {
        firstNumber = number[i1];
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage("https://images.unsplash.com/photo-1618853606877-f172eff9f8b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
          fit: BoxFit.fill,
        )),
        child: FutureBuilder(
          future: getAllData,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("${snapshot.error}"),
              );
            } else if (snapshot.hasData) {
              List<Quotes> data = snapshot.data;

              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(50),
                      child: Text("${data[firstNumber].quote}",
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
