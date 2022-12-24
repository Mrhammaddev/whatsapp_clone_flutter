import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/utils/constants.dart';

class CominSoonDialog extends StatelessWidget {
  const CominSoonDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: Colors.white,
      child: SizedBox(
        height: kHeight(context) / 8,
        child: Center(
            child: Text(
          "Comming Soon!....🥳",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
