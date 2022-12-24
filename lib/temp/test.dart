// import 'package:flutter/material.dart';
// import 'package:scroll_navigation/scroll_navigation.dart';
// import 'package:whatsapp_clone_flutter/pages/home.dart';

// class TitleScrollScreen extends StatefulWidget {
//   TitleScrollScreen({Key? key}) : super(key: key);

//   @override
//   _TitleScrollScreenState createState() => _TitleScrollScreenState();
// }

// class _TitleScrollScreenState extends State<TitleScrollScreen> {
//   final ScrollController controller = ScrollController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color(0xff128C7E),
//       child: SafeArea(
//         child: Scaffold(
//           body: 
//           Screen(
//             appBar: AppBarTitle(title: "WhatsApp", showBack: true),
//             controllerToHideAppBar: controller,
//             body: TitleScrollNavigation(
//               identiferStyle:
//                   NavigationIdentiferStyle(color: Colors.white, width: 10),
//               barStyle: TitleNavigationBarStyle(
//                 activeColor: Colors.white,
//                 elevation: 4.0,
//                 background: Color(0xff128C7E),
//                 style: TextStyle(color: Colors.white),
//                 padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
//                 spaceBetween: 117,
//               ),
//               titles: [
//                 "Chats",
//                 "Status",
//                 "Calls",
//               ],
//               pages: [
//                 ListView.builder(
//                   itemCount: 30,
//                   controller: controller,
//                   padding: EdgeInsets.zero,
//                   itemBuilder: (_, __) {
//                     return Padding(
//                       padding: EdgeInsets.only(bottom: 10),
//                       child: Container(
//                         height: 60,
//                         color: Colors.blue[50],
//                       ),
//                     );
//                   },
//                 ),
//                 Container(color: Colors.red[50]),
//                 Container(color: Colors.green[50]),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class AppBarTitle extends StatelessWidget {
//   const AppBarTitle({
//     Key? key,
//     required this.title,
//     this.showBack = false,
//   }) : super(key: key);

//   final String title;
//   final bool showBack;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Color(0xff128C7E),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.3),
//             spreadRadius: -3,
//             blurRadius: 2,
//             offset: Offset(0, 3),
//           ),
//         ],
//       ),
//       child: SafeArea(
//         child: Row(children: [
//           // if (showBack) ...[
//           //   GestureDetector(
//           //     onTap: () => Navigator.pop(context),
//           //     child: Icon(Icons.arrow_back, color: Colors.grey),
//           //   ),
//           //   SizedBox(width: 20),
//           // ],
//           Expanded(
//             child: Text(
//               title,
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.white,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }
