import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final _key = GlobalKey<FormState>();
  TextEditingController _emailText = TextEditingController();
  TextEditingController _passwordText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        children: [
          TextFormField(
            controller: _emailText,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "Email",
              hintStyle: GoogleFonts.poppins(fontSize: 18),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: _passwordText,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "Password",
              hintStyle: GoogleFonts.poppins(fontSize: 18),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width,
            child: TextButton(
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll(Color(0xFFD890A7)),
              ),
              onPressed: () {},
              child: Text(
                'Login',
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.black),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password!',
                style: GoogleFonts.poppins(fontSize: 13,color: Colors.black),
                textAlign: TextAlign.end,
              ),
            ),
          ),
          Text('Or', style: GoogleFonts.poppins(fontSize: 14)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://img.icons8.com/ios-filled/50/google-logo.png',
                height: 25,
                width: 25,
              ),
              SizedBox(width: 20),
              Image.network(
                'https://img.icons8.com/ios-glyphs/30/linkedin.png',
                height: 30,
                width: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
