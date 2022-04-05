import 'dart:math';

import 'package:flutter/material.dart';
import 'package:yogaapp/screens/customAppbar.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  Animation? _colorTween, _homeTween, _yogaTween, _iconTween, _drawerTween;
  late AnimationController _textanimationController;
  final _scafflodkey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_animationController);
    _iconTween = ColorTween(begin: Colors.white, end: Colors.lightBlue)
        .animate(_animationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _homeTween = ColorTween(begin: Colors.white, end: Colors.blue)
        .animate(_animationController);
    _yogaTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _textanimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    super.initState();
  }

  bool scrollListener(ScrollNotification scrollNotification) {
    bool scroll = false;
    if (scrollNotification.metrics.axis == Axis.vertical) {
      _animationController.animateTo(scrollNotification.metrics.pixels / 80);
      _textanimationController
          .animateTo(scrollNotification.metrics.pixels / 80);
      return scroll = true;
    }
    return scroll;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   title: const Text(
      //     "Yoga App",
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      // body: SafeArea(
      //     child: SingleChildScrollView(
      //   child: Padding(
      //     padding: const EdgeInsets.all(20.0),
      //     child: Column(
      //       children: [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Column(
      //               children: [
      //                 Text("1"),
      //                 Text("Streak"),
      //               ],
      //             ),
      //             Column(
      //               children: [
      //                 Text("1"),
      //                 Text("Streak"),
      //               ],
      //             ),
      //             Column(
      //               children: [
      //                 Text("1"),
      //                 Text("Streak"),
      //               ],
      //             ),
      //           ],
      //         ),
      //         const SizedBox(
      //           height: 20,
      //         ),
      //         const Divider(
      //           thickness: 2,
      //         ),
      //         const SizedBox(
      //           height: 20,
      //         ),
      //         Container(
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text("Yoga for all"),
      //               const SizedBox(
      //                 height: 20,
      //               ),
      //               Container(
      //                 height: 100,
      //                 color: Colors.amberAccent,
      //               ),
      //               const SizedBox(
      //                 height: 10,
      //               ),
      //               Container(
      //                 height: 100,
      //                 color: Colors.amberAccent,
      //               ),
      //             ],
      //           ),
      //         ),
      //         Container(
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               const SizedBox(
      //                 height: 20,
      //               ),
      //               Text("Yoga for students"),
      //               const SizedBox(
      //                 height: 20,
      //               ),
      //               Container(
      //                 height: 100,
      //                 color: Colors.amberAccent,
      //               ),
      //               const SizedBox(
      //                 height: 10,
      //               ),
      //               Container(
      //                 height: 100,
      //                 color: Colors.amberAccent,
      //               ),
      //             ],
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // )),
      drawer: Drawer(),
      body: NotificationListener(
          onNotification: scrollListener,
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 1000,
                                color: Colors.green,
                              ),
                              Container(
                                height: 1000,
                                color: Colors.blue,
                              ),
                              Container(
                                height: 1000,
                                color: Colors.red,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    customAppbar(
                      animationController: _animationController,
                      colorTween: _colorTween,
                      homeTween: _homeTween,
                      yogaTween: _yogaTween,
                      iconTween: _iconTween,
                      drawerTween: _drawerTween,
                      onpressed: () {
                        _scafflodkey.currentState!.openDrawer();
                      },
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
