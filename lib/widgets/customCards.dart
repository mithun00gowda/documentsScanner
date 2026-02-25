import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCards extends StatelessWidget {
  final String label;
  final IconData iconsData;
  final Color bgColor;
  const CustomCards({super.key, required this.label, required this.iconsData, required this.bgColor});

  @override
  Widget build(BuildContext context) {
   return Container(
     margin: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
          Color.fromRGBO(255, 255, 255, 1),
          Color.fromRGBO(255, 255, 255, 0.8),
          Color.fromRGBO(255, 255, 255, 0.4),
          // Colors.transparent
        ])
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            style: ButtonStyle(
              iconSize: WidgetStatePropertyAll(30),
              backgroundColor: WidgetStatePropertyAll(
                bgColor,
              ),
              padding: WidgetStatePropertyAll(EdgeInsets.all(15))
            ),
            onPressed: () {},
            icon: Icon(iconsData),
          ),
          Text(label, style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500)),
        ],
      ),
    )        ;
  }
}
