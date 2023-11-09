import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class House extends StatelessWidget {
  const House({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> products = [
      "images/dar.jfif",
      "images/str.jpg",
      "images/hs.jfif"
    ];
    return Scaffold(
      body: Container(
          height: 900,
          width: 500,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/drag.jpg"), fit: BoxFit.cover)),
          child: Stack(children: [
            Positioned(
              bottom: 17,
              left: 130,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: Color.fromARGB(255, 0, 0, 0), width: 1)),
                  height: 55,
                  width: 130,
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          "            Play",
                          style: GoogleFonts.crimsonText(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.play_arrow),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 13,
              left: -5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey, width: 1)),
                  height: 50,
                  width: 130,
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          "     Add Now",
                          style: GoogleFonts.crimsonText(
                              color: const Color.fromARGB(255, 255, 253, 253),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 13,
              right: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey, width: 1)),
                  height: 50,
                  width: 110,
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          "       More..",
                          style: GoogleFonts.crimsonText(
                              color: const Color.fromARGB(255, 255, 253, 253),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 250,
              width: 400,
              color: Colors.transparent,
              child: SingleChildScrollView(
                child: Container(
                    height: 250,
                    child: CarouselSlider(
                        items: products
                            .map(
                              (
                                e,
                              ) =>
                                  Container(
                                child: Center(
                                  child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Image.asset(
                                        e,
                                        fit: BoxFit.fill,
                                        height: 200,
                                      )),
                                ),
                              ),
                            )
                            .toList(),
                        options: CarouselOptions(
                            autoPlay: true,
                            aspectRatio: 2,
                            enlargeCenterPage: true))),
              ),
            )
          ])),
    );
  }
}
