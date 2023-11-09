import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 38, 39),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            child: TextFormField(
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Color.fromARGB(255, 255, 213, 213)),
                hintText: 'search',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: const [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Recent',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'See all',
                  style: TextStyle(fontSize: 17, color: Colors.blue),
                ),
              ),
            ],
          ),
          ListTile(
              trailing: Icon(
                Icons.remove_circle,
                color: Colors.white,
              ),
              title: Text('Dark', style: TextStyle(color: Colors.white)),
              leading:
                  CircleAvatar(backgroundImage: AssetImage("images/dark.jpg"))),
          ListTile(
              trailing: Icon(
                Icons.remove_circle,
                color: Colors.white,
              ),
              title: Text(
                'All of us are dead',
                style: TextStyle(color: Colors.white),
              ),
              leading: CircleAvatar(
                  backgroundImage: AssetImage('images/allof.jfif')))
        ],
      ),
    );
  }
}
