import 'package:flutter/material.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 33, 33),
        title: Center(
          child: Text(
            "Watch Now",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          buildMediaContainer(
            "images/dq.jpg",
            Icons.play_circle,
            250,
            screenWidth,
          ),
          buildMediaContainer(
            "images/ok.jfif",
            Icons.play_circle,
            250,
            screenWidth,
          ),
        ],
      ),
    );
  }

  Widget buildMediaContainer(
    String imagePath,
    IconData icon,
    double height,
    double screenWidth,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.amber,
        height: height,
        width: screenWidth,
        child: Stack(
          children: [
            Container(
              width: screenWidth,
              child: Image(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 10,
              left: screenWidth / 2 - 40, // Center the icon
              child: Icon(
                icon,
                size: 80,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
