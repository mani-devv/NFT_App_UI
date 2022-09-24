import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft_app_ui/theme/const.dart';

import 'pages/home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: backgroundColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: backgroundColor,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NFT APP UI',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: const HomePage(),
    );
  }
}
