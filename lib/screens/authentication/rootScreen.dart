import 'package:documentscanner/screens/authentication/loginScreen.dart';
import 'package:documentscanner/screens/authentication/registerScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rootscreen extends StatefulWidget {
  const Rootscreen({super.key});

  @override
  State<Rootscreen> createState() => _RootscreenState();
}

class _RootscreenState extends State<Rootscreen> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.greenAccent.shade100,
                Colors.orangeAccent.shade100,
                Colors.redAccent.shade100,
              ],
            ),
          ),
          child: Center(
            child: Container(
              width: size.width * 0.95,
              height: size.height * 0.9,
              margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
                vertical: size.height * 0.2,
              ),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.white70, Colors.white30],
                ),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Scan Documents - Store Documents',style: GoogleFonts.dancingScript(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          elevation: WidgetStatePropertyAll(10),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor: WidgetStatePropertyAll(
                            isLogin ? Color(0xFFD890A7) : Colors.transparent,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            isLogin = true;
                          });
                        },
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          elevation: WidgetStatePropertyAll(10),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor: WidgetStatePropertyAll(
                            isLogin ? Colors.transparent :Color(0xFFD890A7),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            isLogin = false;
                          });
                        },
                        child: Text(
                          'Register',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  isLogin ? Loginscreen() : Registerscreen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
