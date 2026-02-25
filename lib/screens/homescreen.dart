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
            SizedBox(
              height: 250, // Adjust this height based on your CustomCards size
              child: PageView.builder(
                controller: _pageController,
                itemCount: _itemCount,
                clipBehavior: Clip.none, // Prevents clipping if cards get pushed down too far
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return AnimatedBuilder(
                    animation: _pageController,
                    builder: (context, child) {
                      double pageOffset = 0;
                      if (_pageController.position.haveDimensions) {
                        pageOffset = _pageController.page! - index;
                      } else {
                        pageOffset = (0.0 - index); // Fallback for initial render
                      }

                      // 1. Calculate vertical drop (Creates the curve shape)
                      // Multiplying the offset by itself creates a parabola (U-shape)
                      double yOffset = (pageOffset * pageOffset) * 40.0;

                      // 2. Calculate tilt (Creates a fan effect)
                      double tiltAngle = pageOffset * 0.15;

                      return Transform.translate(
                        offset: Offset(0, yOffset),
                        child: Transform.rotate(
                          angle: tiltAngle,
                          child: child, // This renders your CustomCards
                        ),
                      );
                    },
                    child: CustomCards(),
                  );
                },
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
