import 'package:flutter/material.dart';

class customDrawer extends StatelessWidget {
  const customDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                'https://images.unsplash.com/photo-1593810450979-79e8584f76b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80'),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                "Reset Progress",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.restart_alt_outlined),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text(
                "Share with Friends",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.share),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text(
                "Rate us",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.star),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
                title: Text(
                  "Feedback",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.feedback)),
            Divider(
              thickness: 1,
            ),
            ListTile(
                title: Text(
                  "Privacy Policy",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.privacy_tip_outlined)),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text("Version : 1.0.0"),
            )
          ],
        ),
      ),
    );
  }
}
