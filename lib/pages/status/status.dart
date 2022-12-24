import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:status_view/status_view.dart';
import 'package:whatsapp_clone_flutter/utils/constants.dart';
import 'package:whatsapp_clone_flutter/utils/data.dart';

class StatusWidget extends StatefulWidget {
  const StatusWidget({super.key});

  @override
  State<StatusWidget> createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Stack(
                    children: [
                      SizedBox(
                        height: 53,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(300)),
                          child: FadeInImage(
                            placeholder: AssetImage('assets/me.jpeg'),
                            height: 95,
                            width: 53,
                            image: AssetImage('assets/me.jpeg'),
                            fit: BoxFit.cover,
                            imageErrorBuilder: (context, url, error) {
                              return Image(
                                image: AssetImage('assets/me.jpeg'),
                                fit: BoxFit.cover,
                              );
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: primaryColorGreen,
                            borderRadius:
                                BorderRadius.all(Radius.circular(300)),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Text(
                    "My status",
                    style: TextStyle(fontSize: 16, letterSpacing: 0.5),
                  ),
                  subtitle: Text(
                    "Tap to add status update",
                    style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                  ),
                  // trailing: Icon(
                  //   Icons.more_horiz,
                  //   size: 20,
                  //   color: primaryColorGreen,
                  // ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Text(
                  "Recent Updates",
                  style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    nameList.shuffle();
                    imgList.shuffle();
                    return ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0.0),
                        child: StatusView(
                          radius: 30,
                          spacing: 13,
                          strokeWidth: 2,
                          indexOfSeenStatus: 1,
                          numberOfStatus: 3,
                          padding: 3,
                          centerImageUrl: imgList[index],
                          seenColor: Colors.grey,
                          unSeenColor: Colors.green,
                        ),
                      ),
                      title: Text(
                        nameList[index],
                        style: TextStyle(fontSize: 16, letterSpacing: 0.5),
                      ),
                      subtitle: Text(
                        "Today, 12:00 PM",
                        style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                      ),
                    );
                  })
            ],
          ),
        ),
        floatingActionButton: SpeedDial(
          renderOverlay: false,
          children: [
            SpeedDialChild(
              child: Icon(
                Icons.edit,
                color: Colors.black,
              ),
            ),
          ],
          child: Icon(
            Icons.camera_alt_rounded,
            color: Colors.white,
          ),
          backgroundColor: primaryColorGreen,
        ));
  }
}
