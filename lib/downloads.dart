import 'package:flutter/material.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 33, 33),
          title: Center(
              child: Text(
            "downloads",
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: ListView(
          children: [
            ListTile(
              textColor: Colors.white,
              leading:
                  CircleAvatar(backgroundImage: AssetImage("images/str.jfif")),
              title: Text("Stranger things"),
              subtitle: Text("downloaded successfully"),
              trailing: Icon(
                Icons.check,
                color: Colors.white,
              ),
            )
          ],
        ));
  }
}
