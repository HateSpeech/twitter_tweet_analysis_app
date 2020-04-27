import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twittertweetanalysisapp/domain/interactors/ValidateTwitterURL.dart';
import 'package:twittertweetanalysisapp/presentation/core/mobx/tweet/tweet_controller.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_strings.dart';
import 'package:twittertweetanalysisapp/presentation/view/pages/home/home_page.dart';

import 'data/repository/local/LocalRepositoryImpl.dart';
import 'data/repository/remote/RemoteRepositoryImpl.dart';
import 'domain/interactors/GetTweet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // TODO: Add dependency injection
    var localRepository = LocalRepositoryImpl();
    var remoteRepository = RemoteRepositoryImpl();
    var validateTwitterURL = ValidateTwitterURL();
    var getTweet = GetTweet(localRepository, remoteRepository, validateTwitterURL);

    var providers = [
      Provider<TweetController>(create: (_) => TweetController(getTweet))
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
