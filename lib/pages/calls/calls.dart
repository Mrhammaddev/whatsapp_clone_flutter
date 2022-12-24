import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_clone_flutter/utils/constants.dart';
import 'package:whatsapp_clone_flutter/utils/data.dart';

class CallsWidget extends StatefulWidget {
  const CallsWidget({super.key});

  @override
  State<CallsWidget> createState() => _CallsWidgetState();
}

class _CallsWidgetState extends State<CallsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColorGreen,
        child: Icon(Icons.add_call),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      color: primaryColorGreen, shape: BoxShape.circle),
                  child: Icon(
                    Icons.link_rounded,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Create call link",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  "Share a link for your WhatsApp call",
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
                "Recent",
                style: TextStyle(fontSize: 12, color: Colors.grey[700]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              itemCount: nameList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    title: Text(
                      nameList[index],
                      style: TextStyle(fontSize: 16, letterSpacing: 0.5),
                    ),
                    subtitle: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.call_made,
                          color: Colors.green,
                          size: 15,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Today, 7:08 PM"),
                      ],
                    ),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(300)),
                      child: FadeInImage(
                        placeholder: AssetImage('assets/profile2.png'),
                        height: 95,
                        width: 56,
                        image: NetworkImage(imgList[index]),
                        fit: BoxFit.cover,
                        imageErrorBuilder: (context, url, error) {
                          return Image(
                            image: AssetImage('assets/profile2.png'),
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                    ),
                    trailing: Icon(
                      Icons.phone,
                      color: primaryColorGreen,
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
