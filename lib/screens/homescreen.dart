import 'dart:math'; // Required for sin, cos, and atan2
import 'package:documentscanner/widgets/customAppBar.dart';
import 'package:documentscanner/widgets/customCards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late PageController _pageController;
  final int _itemCount = 6;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.55);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List cardData = [
    {
      "label": "Scan",
      "Icon": Icons.document_scanner_rounded,
      "bgColor": Colors.lightBlueAccent,
    },
    {
      "label": "Read",
      "Icon": Icons.book_outlined,
      "bgColor": Colors.orangeAccent,
    },
    {"label": "List", "Icon": Icons.edit, "bgColor": Colors.greenAccent},
    {"label": "Ask AI", "Icon": Icons.mic, "bgColor": Colors.brown.shade300},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.greenAccent.shade100,
              Colors.orangeAccent.shade100,
              Colors.redAccent.shade100,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  iconSize: 30,
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.question_mark_rounded),
                ),
                IconButton(
                  iconSize: 30,
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle_outlined),
                ),
              ],
            ),
            Text(
              "Hi Mithun, How can i help you today?",
              style: GoogleFonts.poppins(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  cardData.length,
                  (index) => CustomCards(
                    bgColor: cardData[index]['bgColor'],
                    iconsData: cardData[index]['Icon'],
                    label: cardData[index]['label'],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
                color: Colors.black45,
              ),
              child: Icon(Icons.search_rounded, size: 50, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
