// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/pages/home_screens/calls.dart';
import 'package:whatsapp_clone_flutter/pages/home_screens/main_chats.dart';
import 'package:whatsapp_clone_flutter/pages/home_screens/status.dart';
import 'package:whatsapp_clone_flutter/utils/constants.dart';
import 'package:whatsapp_clone_flutter/widgets/coming_soon_dialog.dart';

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
}
