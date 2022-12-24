import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone_flutter/pages/home.dart';
import 'package:whatsapp_clone_flutter/pages/splash_screen.dart';
import 'package:whatsapp_clone_flutter/temp/test.dart';
import 'package:whatsapp_clone_flutter/temp/test2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //     textTheme: GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme)),
      home: SplashScreen(),
    );
  }
}
