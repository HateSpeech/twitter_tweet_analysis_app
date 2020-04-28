import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twittertweetanalysisapp/presentation/core/injection/injection.dart';
import 'package:twittertweetanalysisapp/presentation/core/mobx/classification/classification_controller.dart';
import 'package:twittertweetanalysisapp/presentation/core/mobx/tweet/tweet_controller.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_strings.dart';
import 'package:twittertweetanalysisapp/presentation/view/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    setupDependencyInjection();

    var providers = [
      Provider<TweetController>(create: (_) => TweetController(getIt())),
      Provider<ClassificationController>(create: (_) => ClassificationController(getIt()))
    ];

    return MultiProvider(
      providers: providers,
      child: MaterialApp(
      title: AppStrings.appName,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      ),
    );
  }
}
