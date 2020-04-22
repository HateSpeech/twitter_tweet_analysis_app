import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twittertweetanalysisapp/data/repository/local/LocalRepositoryImpl.dart';
import 'package:twittertweetanalysisapp/data/repository/remote/RemoteRepositoryImpl.dart';
import 'package:twittertweetanalysisapp/domain/interactors/GetClassifications.dart';
import 'package:twittertweetanalysisapp/domain/interactors/GetTweet.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_images.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_styles.dart';

class TweetViewWidget extends StatefulWidget {
  TweetViewWidget({Key key}) : super(key: key);

  @override
  _TweetViewWidgetState createState() => _TweetViewWidgetState();
}

class _TweetViewWidgetState extends State<TweetViewWidget> {
  // TODO: Create the presenter and dependency injection
  var _localRepository = LocalRepositoryImpl();
  var _remoteRepository = RemoteRepositoryImpl();

  var getTweet;
  var getClassifications;

  var _tweet;
  var _classifications;

  _TweetViewWidgetState() {
    getTweet = GetTweet(_localRepository, _remoteRepository);
    getClassifications = GetClassifications(_localRepository, _remoteRepository);
    _tweet = getTweet.execute();
  }

  _loadRandomTweet() {
    setState(() {
      _tweet = getTweet.execute();
    });
  }

  _loadClassifications() {
    setState(() {
      _classifications = getClassifications.execute();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
        style: AppStyles.tweetView,
        child: Stack(
          children: [
            Parent(child: AppImages.quote, style: AppStyles.tweetQuoteImage),
            Txt(_tweet.content, style: AppStyles.tweetText),
            GestureDetector(onTap: _loadRandomTweet, child: Parent(child: AppImages.swipeRight, style: AppStyles.tweetSwipeRightImage))
          ]
      )
    );
  }
}