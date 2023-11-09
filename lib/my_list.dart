import 'package:flutter/material.dart';

class Mylist extends StatelessWidget {
  const Mylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/house.jfif"),
            ),
            title: Text(
              "Houseof Dragon",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("watched"),
            trailing: Icon(
              Icons.checklist_rtl_rounded,
              color: Colors.white,
            ),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/R.jpg"),
            ),
            title: Text(
              "OK jaanu",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("watched"),
            trailing: Icon(
              Icons.checklist_rtl_rounded,
              color: Colors.white,
            ),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/st.jfif"),
            ),
            title: Text(
              "stranger things",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("liked"),
            trailing: Icon(
              Icons.checklist_rtl_rounded,
              color: Colors.white,
            ),
          ),
          ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/kurupp.jpg"),
            ),
            title: Text(
              "kurupp",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("added to wishlist"),
            trailing: Icon(
              Icons.checklist_rtl_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
