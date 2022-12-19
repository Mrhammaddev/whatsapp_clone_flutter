import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(child: Image.asset("assets/logo.png", width: 70, height: 70)),
          Padding(
            padding: EdgeInsets.only(top: 150.0),
            child: CircularProgressIndicator(
              color: Colors.green,
            ),
          )
        ]),
      ),
    );
  }
}
