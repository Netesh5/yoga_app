import 'package:flutter/material.dart';

class customDrawer extends StatelessWidget {
  const customDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Image.network(
                'https://images.unsplash.com/photo-1593810450979-79e8584f76b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80'),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text("Reset Progress"),
              leading: Icon(Icons.restart_alt_outlined),
            ),
            ListTile(
              title: Text("Share with Friends"),
              leading: Icon(Icons.share),
            ),
            ListTile(
              title: Text("Rate us"),
              leading: Icon(Icons.star),
            ),
            ListTile(title: Text("Feedback"), leading: Icon(Icons.feedback)),
            ListTile(
                title: Text("Privacy Policy"),
                leading: Icon(Icons.privacy_tip_outlined)),
          ],
        ),
      ),
    );
  }
}
