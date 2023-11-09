import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_3/sceries.dart';
import 'package:netflix_3/search.dart';

import 'house.dart';
import 'movies.dart';
import 'my_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: const Color.fromARGB(255, 182, 16, 16),
            tabs: [
              const Tab(child: Image(image: AssetImage("images/netflix.png"))),
              Tab(
                child: Text(
                  "TV shows",
                  style: GoogleFonts.aBeeZee(color: Colors.white),
                ),
              ),
              Tab(
                  child: Text(
                "Movies",
                style: GoogleFonts.aBeeZee(color: Colors.white),
              )),
              Tab(
                  child: Text(
                "My list",
                style: GoogleFonts.aBeeZee(color: Colors.white),
              )),
            ],
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          title: const Center(
              child: Text(
            "N E T F L I X ",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          )),
          titleTextStyle:
              const TextStyle(color: Color.fromARGB(255, 119, 26, 26)),
          backgroundColor: const Color.fromARGB(255, 22, 22, 22),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Search(),
                      ));
                },
                icon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 255, 236, 236),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.tv,
                  color: Color.fromARGB(255, 255, 234, 234),
                ))
          ],
        ),
        backgroundColor: Colors.transparent,
        body: const TabBarView(
          children: [House(), Series(), Movies(), Mylist()],
        ),
      ),
    );
  }
}
