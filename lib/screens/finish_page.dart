import 'package:flutter/material.dart';

class finish extends StatelessWidget {
  const finish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://www.pngall.com/wp-content/uploads/4/Golden-Cup.png')),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                       Text(
                        "125",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "KCal",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                       Text(
                        "12",
                        style:  TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "minutes",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Do it again",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Share",
                        style:  TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 20,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "RATE OUR APP",
                      style:
                           TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                color: Colors.grey,
              )
            ]),
          ),
        ),
      ),
    ));
  }
}
