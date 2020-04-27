import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twittertweetanalysisapp/domain/interactors/ValidateTwitterURL.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/bloc_delegate.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/events/get_random_tweet.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/tweet_bloc.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_strings.dart';
import 'package:twittertweetanalysisapp/presentation/view/pages/home/home_page.dart';

import 'data/repository/local/LocalRepositoryImpl.dart';
import 'data/repository/remote/RemoteRepositoryImpl.dart';
import 'domain/interactors/GetTweet.dart';

void main() {
  BlocSupervisor.delegate = AppBlocDelegate();
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

    return MaterialApp(
      title: AppStrings.appName,

      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: BlocProvider(
        create: (context) => TweetBloc(getTweet)..add(GetRandomTweet()),
        child: HomePage(),
      ),
    );
  }
}
