// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:scroll_navigation/scroll_navigation.dart';
import 'package:whatsapp_clone_flutter/pages/home.dart';
import 'package:whatsapp_clone_flutter/utils/constants.dart';

class TitleScrollScreen extends StatefulWidget {
  const TitleScrollScreen({Key? key}) : super(key: key);

  @override
  _TitleScrollScreenState createState() => _TitleScrollScreenState();
}

class _TitleScrollScreenState extends State<TitleScrollScreen> {
  TabController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff128C7E),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColorGreen,
            centerTitle: false,
            title: Text('WhatsApp'),
            actions: [
              Row(
                children: [
                  Icon(Icons.camera_alt_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.search),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.more_vert_rounded),
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
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Chats"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Status"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Calls"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 20,
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 60,
                    width: kWidth(context),
                    // color: Colors.blue,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 53,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(300)),
                                child: FadeInImage(
                                  placeholder:
                                      AssetImage('assets/profile2.png'),
                                  // height: 97,
                                  // width: 97,
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
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Malik Hammmad",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "Kya hal ha?",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey[600]),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "18/12/2022",
                            style: TextStyle(
                                fontSize: 11, color: Colors.grey[600]),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              // HomeWidget(),
              HomeWidget(),
              HomeWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
