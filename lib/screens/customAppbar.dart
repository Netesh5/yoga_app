import 'package:flutter/material.dart';

class customAppbar extends StatelessWidget {
  AnimationController animationController;
  Animation? colorTween, homeTween, yogaTween, iconTween, drawerTween;
  Function()? onpressed;
  customAppbar(
      {required this.animationController,
      required this.colorTween,
      required this.homeTween,
      required this.yogaTween,
      required this.iconTween,
      required this.drawerTween,
      required this.onpressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) => AppBar(
                leading: IconButton(
                  icon: Icon(Icons.dehaze),
                  color: drawerTween!.value,
                  onPressed: () {},
                ),
                backgroundColor: colorTween!.value,
                elevation: 0,
                title: Text(
                  "Yoga",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: homeTween!.value,
                      fontSize: 20),
                ),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_sharp,
                        color: iconTween!.value,
                      )),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                  )
                ],
              )),
    );
  }
}
