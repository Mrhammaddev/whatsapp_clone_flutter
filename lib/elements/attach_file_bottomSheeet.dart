import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class FloatingModal extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;

  const FloatingModal({Key? key, required this.child, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Material(
          color: backgroundColor,
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(12),
          child: child,
        ),
      ),
    );
  }
}

Future<T> showFloatingModalBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  Color? backgroundColor,
}) async {
  final result = await showCustomModalBottomSheet(
      context: context,
      builder: builder,
      containerWidget: (_, animation, child) => FloatingModal(
            child: child,
          ),
      expand: false);

  return result;
}

class ModalFit extends StatelessWidget {
  const ModalFit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AttachFileButtonWidget(
                  title: "Document",
                  icn: FontAwesomeIcons.file,
                  c1: Color(0xff755EEA),
                  c2: Color(0xff8069FD),
                ),
                AttachFileButtonWidget(
                  title: "Camera",
                  icn: FontAwesomeIcons.camera,
                  c1: Color(0xffE82A6D),
                  c2: Color(0xffFE2E74),
                ),
                AttachFileButtonWidget(
                  title: "Gallery",
                  icn: FontAwesomeIcons.images,
                  c1: Color(0xffB757E6),
                  c2: Color(0xffC862FA),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AttachFileButtonWidget(
                  title: "Audio",
                  icn: FontAwesomeIcons.headphones,
                  c1: Color(0xffE25D30),
                  c2: Color(0xffFB6631),
                ),
                AttachFileButtonWidget(
                  title: "Location",
                  icn: FontAwesomeIcons.locationDot,
                  c1: Color(0xff1D9B4F),
                  c2: Color(0xff1DA853),
                ),
                AttachFileButtonWidget(
                  title: "Contact",
                  icn: FontAwesomeIcons.user,
                  c1: Color(0xff0292CD),
                  c2: Color(0xff019DDD),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            AttachFileButtonWidget(
              title: "Poll",
              icn: Icons.signal_cellular_alt_outlined,
              c1: Color(0xff02998D),
              c2: Color(0xff03A598),
            ),
          ],
        ),
      ),
    ));
  }
}

class AttachFileButtonWidget extends StatelessWidget {
  String title;
  IconData icn;
  Color c1;
  Color c2;
  AttachFileButtonWidget(
      {Key? key,
      required this.title,
      required this.icn,
      required this.c1,
      required this.c2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              tileMode: TileMode.mirror,
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                c1,
                c2,
              ],
              stops: [
                0.5,
                0,
              ],
            ),
            backgroundBlendMode: BlendMode.srcOver,
          ),
          child: Center(
              child: FaIcon(
            icn,
            color: Colors.white,
          )),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.grey[600], fontSize: 11),
        )
      ],
    );
  }
}
