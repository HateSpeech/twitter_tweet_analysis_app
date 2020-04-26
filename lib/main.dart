import 'package:flutter/material.dart';
import 'package:twittertweetanalysisapp/presentation/view/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tweet.analysis',

      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: HomePage(),
    );
  }
}
