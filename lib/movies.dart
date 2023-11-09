import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Movies extends StatelessWidget {
  const Movies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
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
                            fontWeight: FontWeight.w700, fontSize: 15)),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 180,
                          width: 140,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/kurupp.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                          bottom: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(230, 0, 0, 0)),
                              child: Center(
                                child: Text(
                                  "KURUPP",
                                  style: GoogleFonts.arima(
                                      color: Color.fromARGB(255, 255, 52, 52),
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15)),
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
                                borderRadius: BorderRadius.circular(60)),
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 180,
                            width: 140,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/R.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            bottom: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(230, 0, 0, 0)),
                                child: Center(
                                  child: Text(
                                    "OK JAANU",
                                    style: GoogleFonts.arima(
                                        color: Color.fromARGB(255, 255, 52, 52),
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
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
                                  borderRadius: BorderRadius.circular(60)),
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 180,
                            width: 140,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/beast.png"),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            bottom: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(230, 0, 0, 0)),
                                child: Center(
                                  child: Text(
                                    "BEAST",
                                    style: GoogleFonts.arima(
                                        color: Color.fromARGB(255, 255, 52, 52),
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
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
                                  borderRadius: BorderRadius.circular(60)),
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 180,
                            width: 140,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/dark.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            bottom: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(230, 0, 0, 0)),
                                child: Center(
                                  child: Text(
                                    "Dark",
                                    style: GoogleFonts.arima(
                                        color: Color.fromARGB(255, 255, 52, 52),
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
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
                                  borderRadius: BorderRadius.circular(60)),
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "trending now",
                    style: GoogleFonts.aBeeZee(
                        color: Colors.white,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15)),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 180,
                          width: 140,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/kurupp.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                          bottom: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(230, 0, 0, 0)),
                              child: Center(
                                child: Text(
                                  "KURUPP",
                                  style: GoogleFonts.arima(
                                      color: Color.fromARGB(255, 255, 52, 52),
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15)),
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
                                borderRadius: BorderRadius.circular(60)),
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 180,
                            width: 140,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/R.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            bottom: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(230, 0, 0, 0)),
                                child: Center(
                                  child: Text(
                                    "OK JAANU",
                                    style: GoogleFonts.arima(
                                        color: Color.fromARGB(255, 255, 52, 52),
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
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
                                  borderRadius: BorderRadius.circular(60)),
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 180,
                            width: 140,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/beast.png"),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            bottom: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(230, 0, 0, 0)),
                                child: Center(
                                  child: Text(
                                    "BEAST",
                                    style: GoogleFonts.arima(
                                        color: Color.fromARGB(255, 255, 52, 52),
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
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
                                  borderRadius: BorderRadius.circular(60)),
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 180,
                            width: 140,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/dark.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            bottom: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(230, 0, 0, 0)),
                                child: Center(
                                  child: Text(
                                    "Dark",
                                    style: GoogleFonts.arima(
                                        color: Color.fromARGB(255, 255, 52, 52),
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15)),
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
                                  borderRadius: BorderRadius.circular(60)),
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
