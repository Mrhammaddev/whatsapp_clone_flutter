import 'package:flutter/material.dart';

double kHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double kWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

var textFieldInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(30),
  borderSide: BorderSide(
    color: Colors.transparent,
    width: 0,
  ),
);

final Color scaffoldBgColor = Color(0xFFFAFAFA);
final Color primaryColorGreen = Color(0xff128C7E);
