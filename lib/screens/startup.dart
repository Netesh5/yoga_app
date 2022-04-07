import 'package:flutter/material.dart';

class startUp extends StatefulWidget {
  const startUp({Key? key}) : super(key: key);

  @override
  State<startUp> createState() => _startUpState();
}

class _startUpState extends State<startUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Yoga',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              background: Image.network(
                  'https://img.freepik.com/free-vector/illustration-vector-graphic-sunset-yoga-silhouette-perfect-use-yoga-studio-wallpaper_315140-83.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
