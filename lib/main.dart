import 'package:flutter/material.dart';
import 'package:twittertweetanalysisapp/presentation/view/home/home_page.dart';

import 'presentation/view/home/tweet_view_widget.dart';

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
