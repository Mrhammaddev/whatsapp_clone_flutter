import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/pages/chatScreen/chat_screen.dart';
import 'package:whatsapp_clone_flutter/utils/constants.dart';
import 'package:whatsapp_clone_flutter/utils/data.dart';

class MainChatWidget extends StatelessWidget {
  const MainChatWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColorGreen,
        child: Icon(Icons.message),
      ),
      body: ListView.builder(
        itemCount: nameList.length,
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        // padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => ChatScreenWidget()));
            },
            child: ListTile(
              title: Text(
                nameList[index],
                style: TextStyle(fontSize: 16, letterSpacing: 0.5),
              ),
              subtitle: Text("Hello"),
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
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  "18/12/2022",
                  style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
