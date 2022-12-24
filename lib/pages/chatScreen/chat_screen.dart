import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_clone_flutter/utils/constants.dart';

class ChatScreenWidget extends StatefulWidget {
  const ChatScreenWidget({super.key});

  @override
  State<ChatScreenWidget> createState() => _ChatScreenWidgetState();
}

class _ChatScreenWidgetState extends State<ChatScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColorGreen,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        // leading: Container(color: Colors.red, child: Icon(Icons.arrow_back)),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                splashRadius: 20,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            SizedBox(
              height: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(300)),
                child: FadeInImage(
                  placeholder: AssetImage('assets/profile2.png'),
                  // height: 95,
                  // width: 56,
                  image: AssetImage('assets/profile2.png'),
                  fit: BoxFit.cover,
                  imageErrorBuilder: (context, url, error) {
                    return Image(
                      image: AssetImage('assets/profile2.png'),
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            Text("Person name"),
          ],
        ),
        centerTitle: false,
      ),
      body: Container(),
    );
  }
}
