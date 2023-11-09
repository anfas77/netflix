import 'package:flutter/material.dart';
import 'package:netflix_3/home.dart';
import 'package:netflix_3/play.dart';

import 'downloads.dart';

// ignore: must_be_immutable
class RealHome extends StatelessWidget {
  RealHome({super.key});
  ValueNotifier notifier = ValueNotifier(0);
  // ignore: prefer_const_constructors
  List screen = [const Home(), PlayPage(), DownloadsPage()];
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: notifier,
        builder: (context, value, _) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              fixedColor: const Color.fromARGB(255, 158, 11, 0),
              backgroundColor: Color.fromARGB(255, 22, 21, 21),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.tv,
                    size: 25,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.play_arrow_rounded,
                    size: 25,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.download_rounded, size: 25),
                  label: "",
                ),
              ],
              currentIndex: notifier.value,
              onTap: (value) {
                notifier.value = value;
              },
            ),
            body: screen[value],
          );
        });
  }
}
