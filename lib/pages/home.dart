// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/pages/calls/calls.dart';
import 'package:whatsapp_clone_flutter/pages/main_chats/main_chats.dart';
import 'package:whatsapp_clone_flutter/pages/status/status.dart';
import 'package:whatsapp_clone_flutter/utils/constants.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  TabController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff128C7E),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: scaffoldBgColor,
          appBar: AppBar(
            backgroundColor: primaryColorGreen,
            centerTitle: false,
            title: Text(
              'WhatsApp',
              style: TextStyle(fontSize: 20),
            ),
            actions: [
              Row(
                children: [
                  Icon(Icons.camera_alt_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.search),
                  SizedBox(
                    width: 5,
                  ),
                  PopupMenuButton(
                    icon: Icon(Icons.more_vert_rounded),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem<int>(
                          value: 0,
                          child: Text("New group"),
                        ),
                        PopupMenuItem<int>(
                          value: 1,
                          child: Text("New broadcast"),
                        ),
                        PopupMenuItem<int>(
                          value: 2,
                          child: Text("Linked devices"),
                        ),
                        PopupMenuItem<int>(
                          value: 3,
                          child: Text("Starred messages"),
                        ),
                        PopupMenuItem<int>(
                          value: 4,
                          child: Text("Settings"),
                        ),
                      ];
                    },
                    onSelected: (value) {
                      if (value == 0) {
                        comingSoonDialog(context);
                      } else if (value == 1) {
                        comingSoonDialog(context);
                      } else if (value == 2) {
                        comingSoonDialog(context);
                      } else if (value == 3) {
                        comingSoonDialog(context);
                      } else if (value == 4) {
                        comingSoonDialog(context);
                      }
                    },
                  ),
                ],
              )
            ],
            excludeHeaderSemantics: false,
            bottom: TabBar(
              controller: controller,
              isScrollable: false,
              indicatorColor: Colors.white,
              tabs: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Chats",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Status",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Calls",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              MainChatWidget(),
              StatusWidget(),
              CallsWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> comingSoonDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
        });
  }
}
