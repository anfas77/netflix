import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Series extends StatelessWidget {
  const Series({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Define a function to calculate the item width based on screen size
    double getItemWidth() {
      if (screenWidth < 600) {
        return screenWidth * 0.4;
      } else {
        return 140.0; // The default width for larger screens
      }
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "popular item ",
                  style: GoogleFonts.aBeeZee(
                    color: Colors.white,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  for (var seriesData in seriesList)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SeriesItem(
                        seriesData: seriesData,
                        itemWidth: getItemWidth(),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SeriesItem extends StatelessWidget {
  final Map<String, dynamic> seriesData;
  final double itemWidth;

  SeriesItem({
    required this.seriesData,
    required this.itemWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: itemWidth,
      child: Stack(
        children: [
          Container(
            height: 180,
            width: itemWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(seriesData['imagePath']),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: itemWidth - 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(230, 0, 0, 0),
                ),
                child: Center(
                  child: Text(
                    seriesData['title'],
                    style: GoogleFonts.arima(
                      color: Color.fromARGB(255, 255, 52, 52),
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 2,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Define a list of series data
List<Map<String, dynamic>> seriesList = [
  {
    'imagePath': "images/drag.jpg",
    'title': "House of Dragon",
  },
  {
    'imagePath': "images/st.jfif",
    'title': "Stranger Things",
  },
  {
    'imagePath': "images/allof.jfif",
    'title': "All of Us Are Dead",
  },
  {
    'imagePath': "images/dark.jpg",
    'title': "Dark",
  },
];
