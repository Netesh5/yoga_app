import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:yogaapp/database/db.dart';
import 'package:yogaapp/models/yogaModel.dart';
import 'package:yogaapp/screens/startup.dart';
import 'package:yogaapp/widgets/customAppbar.dart';
import 'package:yogaapp/widgets/customDrawer.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorTween, _homeTween, _yogaTween, _iconTween, _drawerTween;
  late AnimationController _textanimationController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  Future makeYogaEntry(yoga yoga, String tableName) async {
    yogaDatabase? _yogadatabase;
    final result = await _yogadatabase?.insert(yoga, tableName);
  }

  Future makeYogaSumEntry(yogaSummary yogasum, String tableName) async {
    yogaDatabase? _yogadatabase;
    final result = await _yogadatabase?.insertYogaSummary(yogasum);
  }

  bool isloading = true;
  Future readYogaSumEntry() async {
    List<yogaSummary>? sumEntry;
    yogaDatabase? _yogadatabase;
    sumEntry = await _yogadatabase?.readallYogaSum();
    isloading = true;
    debugPrint(sumEntry.toString());
  }

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));
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
        AnimationController(vsync: this, duration: const Duration(seconds: 0));
    super.initState();

    makeYogaSumEntry(
        yogaSummary(
            yogaWorkOutName: "yoga summary",
            backImg: "url",
            timeTaken: "10",
            totalNofWork: "5"),
        yogaModel.yogaTableName4);

    makeYogaEntry(yoga(yogaTitle: "yoga", imageUrl: "uRL", second: true),
        yogaModel.yogaTableName1);

    readYogaSumEntry();
  }

  bool scrollListener(ScrollNotification scrollNotification) {
    bool scroll = false;
    if (scrollNotification.metrics.axis == Axis.vertical) {
      _animationController.animateTo(scrollNotification.metrics.pixels / 80);
      _textanimationController.animateTo(scrollNotification.metrics.pixels);
      return scroll = true;
    }
    return scroll;
  }

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const customDrawer(),
      backgroundColor: Colors.white,
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
                              padding:
                                  const EdgeInsets.fromLTRB(50, 80, 50, 50),
                              decoration:
                                  const BoxDecoration(color: Colors.blueAccent),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: const [
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("Streak",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  Column(
                                    children: const [
                                      Text('120',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      Text("Kcal",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  Column(
                                    children: const [
                                      Text('1',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      Text("minutes",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Yoga for all",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Stack(
                                      children: [
                                        Hero(
                                          tag: "yoga1",
                                          child: Container(
                                            height: 150,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  'https://img.freepik.com/free-vector/illustration-vector-graphic-sunset-yoga-silhouette-perfect-use-yoga-studio-wallpaper_315140-83.jpg'),
                                            )),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const startUp()));
                                          },
                                          child: Container(
                                            height: 150,
                                            color: Colors.black26,
                                          ),
                                        ),
                                        const Positioned(
                                          top: 10,
                                          left: 10,
                                          child: Text(
                                            "Yoga for Begineers",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                        const Positioned(
                                          top: 35,
                                          left: 10,
                                          child: Text(
                                            "Last time : 7th April,2022",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          height: 150,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                'https://t4.ftcdn.net/jpg/03/57/47/89/360_F_357478924_8Z8ylW4poNEZ0Mhne9YZQcZOwQlBwMXv.jpg'),
                                          )),
                                        ),
                                        Container(
                                          height: 150,
                                          color: Colors.black26,
                                        ),
                                        const Positioned(
                                          top: 10,
                                          left: 10,
                                          child: Text(
                                            "Yoga for Intermediate",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                        const Positioned(
                                          top: 35,
                                          left: 10,
                                          child: Text(
                                            "Last time : 7th April,2022",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          height: 150,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                'https://static.vecteezy.com/system/resources/thumbnails/005/178/403/small_2x/woman-doing-camel-pose-or-ustrasana-exercise-free-vector.jpg'),
                                          )),
                                        ),
                                        Container(
                                          height: 150,
                                          color: Colors.black26,
                                        ),
                                        const Positioned(
                                          top: 10,
                                          left: 10,
                                          child: Text(
                                            "Yoga for Advance",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                        const Positioned(
                                          top: 35,
                                          left: 10,
                                          child: Text(
                                            "Last time : 7th April,2022",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  customAppbar(
                      animationController: _animationController,
                      colorTween: _colorTween,
                      drawerTween: _drawerTween,
                      homeTween: _homeTween,
                      iconTween: _iconTween,
                      onpressed: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      yogaTween: _yogaTween)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
