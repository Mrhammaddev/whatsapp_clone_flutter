import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/pages/splash_screen.dart';

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
