import 'package:flutter/material.dart';
import 'package:nft_app_ui/components/my_appbar.dart';
import 'package:nft_app_ui/components/my_tabBar.dart';
import 'package:nft_app_ui/tabs/recent_tab.dart';
import 'package:nft_app_ui/tabs/top_tab.dart';
import 'package:nft_app_ui/tabs/trending_tab.dart';
import 'package:nft_app_ui/theme/const.dart';
import 'package:nft_app_ui/util/glass_box.dart';

import '../components/my_bottombar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // search button tapped
  void _searchButtonTapped() {}

  // our 3 tab options
  List tabOptions = const [
    ["Recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top", TopTab()],
  ];

  // bottom bar navigation
  int _currentBottomindex = 0;
  void _handleBottomIndexChange(int? index) {
    setState(() {
      _currentBottomindex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: const Duration(seconds: 1),
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: backgroundColor,
        extendBody: true,
        extendBodyBehindAppBar: true,
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _currentBottomindex,
            onTap: _handleBottomIndexChange,
          ),
        ),
        body: ListView(
          children: [
            // appBar + searchButton
            MyAppBar(
              title: "Explore Collection",
              onTap: _searchButtonTapped,
            ),

            // tab Bar
            SizedBox(
              height: 600,
              child: MyTabBar(tabOptions: tabOptions),
            ),
          ],
        ),
      ),
    );
  }
}
