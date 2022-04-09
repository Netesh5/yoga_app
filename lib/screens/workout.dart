import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yogaapp/models/workOutModel.dart';

class workOut extends StatelessWidget {
  const workOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<workOutModel>(
      create: (context) => workOutModel(context),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    height: 250,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://img.freepik.com/free-vector/illustration-vector-graphic-sunset-yoga-silhouette-perfect-use-yoga-studio-wallpaper_315140-83.jpg"))),
                  ),
                  Spacer(),
                  Text("Yoga",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("00",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        Text(" : ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        Consumer<workOutModel>(
                            builder: (context, value, child) => Text(
                                "${value.countdown}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)))
                      ],
                    ),
                  ),
                  Spacer(),
                  Consumer<workOutModel>(
                    builder: (context, value, child) => Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(8)),
                      child: ElevatedButton(
                          onPressed: () {
                            value.show();
                          },
                          child: Text("Pause",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20))),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Previous",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Next",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Consumer<workOutModel>(
              builder: (context, value, child) => Visibility(
                  visible: value.visible,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.deepPurpleAccent.withOpacity(0.95),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Paused",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Restart",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Quit",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                            onPressed: () {
                              value.hide();
                            },
                            child: Text(
                              "Resume",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
