import 'package:flutter/material.dart';

class customDrawer extends StatelessWidget {
  const customDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Image.network(
              'https://images.unsplash.com/photo-1593810450979-79e8584f76b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80'),
        ],
      ),
    );
  }
}
