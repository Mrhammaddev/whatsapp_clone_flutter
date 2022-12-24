// ignore_for_file: prefer_const_constructors

import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sheet/sheet.dart';
import 'package:whatsapp_clone_flutter/elements/attach_file_bottomSheeet.dart';
import 'package:whatsapp_clone_flutter/utils/constants.dart';
import 'package:whatsapp_clone_flutter/widgets/coming_soon_dialog.dart';

class ChatScreenWidget extends StatefulWidget {
  String profileImage, name;
  ChatScreenWidget({super.key, required this.profileImage, required this.name});

  @override
  State<ChatScreenWidget> createState() => _ChatScreenWidgetState();
}

class _ChatScreenWidgetState extends State<ChatScreenWidget> {
  bool send_mic = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: scaffoldBgColor,
      child: SafeArea(
        top: false,
        child: Scaffold(
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
                  width: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(300)),
                    child: FadeInImage(
                      placeholder: AssetImage('assets/profile.png'),
                      image: NetworkImage(widget.profileImage),
                      fit: BoxFit.cover,
                      imageErrorBuilder: (context, url, error) {
                        return Image(
                          image: AssetImage('assets/profile.png'),
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(widget.name),
              ],
            ),
            centerTitle: false,
            actions: [
              Icon(Icons.add_ic_call_rounded),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon: Icon(Icons.more_vert_rounded),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem<int>(
                      value: 0,
                      child: Text("View Contact"),
                    ),
                    PopupMenuItem<int>(
                      value: 1,
                      child: Text("Report"),
                    ),
                    PopupMenuItem<int>(
                      value: 2,
                      child: Text("Block"),
                    ),
                    PopupMenuItem<int>(
                      value: 3,
                      child: Text("Search"),
                    ),
                    PopupMenuItem<int>(
                      value: 4,
                      child: Text("Mute notifications"),
                    ),
                    PopupMenuItem<int>(
                      value: 5,
                      child: Text("Disappearing messages"),
                    ),
                    PopupMenuItem<int>(
                      value: 6,
                      child: Text("Wallpapers"),
                    ),
                  ];
                },
                onSelected: (value) {
                  if (value == 0) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CominSoonDialog();
                        });
                  } else if (value == 1) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CominSoonDialog();
                        });
                  } else if (value == 2) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CominSoonDialog();
                        });
                  } else if (value == 3) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CominSoonDialog();
                        });
                  } else if (value == 4) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CominSoonDialog();
                        });
                  } else if (value == 5) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CominSoonDialog();
                        });
                  } else if (value == 6) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return CominSoonDialog();
                        });
                  }
                },
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          body: Container(
            height: kHeight(context),
            width: kWidth(context),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/chat_bg.png"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Bubble(
                  elevation: 3,
                  alignment: Alignment.center,
                  color: const Color.fromRGBO(212, 234, 244, 1),
                  child: const Text('TODAY',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11)),
                ),
                Bubble(
                  elevation: 3,
                  margin: const BubbleEdges.only(top: 10),
                  alignment: Alignment.topRight,
                  nip: BubbleNip.rightTop,
                  color: const Color.fromRGBO(225, 255, 199, 1),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Well, see for yourself'),
                      SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        width: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '9:30 PM',
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 11),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.done_all_rounded,
                              color: Colors.grey[700],
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Bubble(
                  elevation: 3,
                  margin: const BubbleEdges.only(top: 5),
                  alignment: Alignment.topRight,
                  nip: BubbleNip.rightTop,
                  showNip: false,
                  color: const Color.fromRGBO(225, 255, 199, 1),
                  child: const Text('How are you?', textAlign: TextAlign.right),
                ),
                Bubble(
                  elevation: 3,
                  margin: const BubbleEdges.only(top: 8),
                  alignment: Alignment.topLeft,
                  nip: BubbleNip.leftTop,
                  child: const Text('Hi, developer!'),
                ),
                Bubble(
                  elevation: 3,
                  margin: const BubbleEdges.only(top: 6),
                  alignment: Alignment.topLeft,
                  nip: BubbleNip.leftTop,
                  showNip: false,
                  child: Text('Well, see for yourself'),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            height: 55,
            padding: EdgeInsets.all(6),
            width: kWidth(context),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/chat_bg.png"),
                    fit: BoxFit.cover)),
            child: Row(
              children: [
                SizedBox(
                  width: kWidth(context) * 0.85,
                  child: TextFormField(
                    onSaved: (value) {
                      setState(() {
                        send_mic = false;
                      });
                    },
                    onTap: () {
                      setState(() {
                        send_mic = true;
                      });
                    },
                    keyboardType: TextInputType.multiline,
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: primaryColorGreen,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(4),
                      prefixIcon: IconButton(
                        color: Colors.grey[500],
                        icon: Icon(Icons.emoji_emotions_outlined),
                        onPressed: () {},
                      ),
                      suffixIcon: SizedBox(
                        width: kWidth(context) * 0.23,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                showFloatingModalBottomSheet(
                                  context: context,
                                  builder: (context) => ModalFit(),
                                );
                              },
                              icon: FaIcon(
                                color: Colors.grey[500],
                                FontAwesomeIcons.paperclip,
                                size: 20,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt_rounded,
                                color: Colors.grey[500],
                              ),
                            )
                          ],
                        ),
                      ),
                      hintText: "Message",
                      alignLabelWithHint: true,
                      fillColor: Colors.white,
                      filled: true,
                      border: textFieldInputBorder,
                      enabledBorder: textFieldInputBorder,
                      focusedBorder: textFieldInputBorder,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: primaryColorGreen,
                      borderRadius: BorderRadius.circular(30)),
                  child: IconButton(
                    onPressed: () {},
                    icon: (send_mic)
                        ? Icon(
                            Icons.send_rounded,
                            color: Colors.white,
                          )
                        : Icon(
                            Icons.mic_rounded,
                            color: Colors.white,
                          ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
