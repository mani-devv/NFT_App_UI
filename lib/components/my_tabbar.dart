import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTabBar extends StatelessWidget {
  final List tabOptions;
  const MyTabBar({
    Key? key,
    required this.tabOptions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Tab bar
        TabBar(
          unselectedLabelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelColor: Colors.grey,
          labelStyle: GoogleFonts.bebasNeue(
            fontSize: MediaQuery.of(context).size.aspectRatio * 62,
          ),
          tabs: [
            Tab(
              child: Text(tabOptions[0][0]),
            ),
            Tab(
              child: Text(tabOptions[1][0]),
            ),
            Tab(
              child: Text(tabOptions[2][0]),
            ),
          ],
        ),

        // Tab View
        Expanded(
          child: TabBarView(
            physics: const BouncingScrollPhysics(),
            children: [
              tabOptions[0][1],
              tabOptions[1][1],
              tabOptions[2][1],
            ],
          ),
        ),
      ],
    );
  }
}
