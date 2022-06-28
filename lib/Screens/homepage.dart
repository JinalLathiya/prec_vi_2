import 'package:flutter/material.dart';
import '../models/quotes_model.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

int j = 0;

class _HomepageState extends State<Homepage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Quotes App",
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  "Quotes_page",
                  arguments: Quotes(
                    quote:
                    "Love is the strange bewilderment which overtakes one person on account of another person.",
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(5),
                alignment: Alignment.center,
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Love Quotes 😍",
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  "Quotes_page",
                  arguments: Quotes(
                    quote:
                    "Be happy for this moment. This moment is your life.",
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(5),
                alignment: Alignment.center,
                height: 60,
                width: 190,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Happy Quotes 😄",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  "Quotes_page",
                  arguments: Quotes(
                    quote:
                    "Pain is temporary but the person who hurt you is permanently never going to change, move on.",
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(5),
                alignment: Alignment.center,
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Sad Quotes 😔",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  "Quotes_page",
                  arguments: Quotes(
                    quote:
                    "You define your own life. Don’t let other people write your script.",
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(5),
                alignment: Alignment.center,
                height: 60,
                width: 240,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Motivational Quotes 🙂",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
