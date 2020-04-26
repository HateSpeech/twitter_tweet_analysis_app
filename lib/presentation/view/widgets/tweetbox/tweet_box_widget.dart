import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twittertweetanalysisapp/data/repository/local/LocalRepositoryImpl.dart';
import 'package:twittertweetanalysisapp/data/repository/remote/RemoteRepositoryImpl.dart';
import 'package:twittertweetanalysisapp/domain/interactors/GetClassifications.dart';
import 'package:twittertweetanalysisapp/domain/interactors/GetTweet.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_images.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_styles.dart';
import 'package:twittertweetanalysisapp/presentation/model/Tweet.dart';
import 'package:twittertweetanalysisapp/presentation/view/widgets/tweetbox/tweet_box_presenter.dart';
import 'package:twittertweetanalysisapp/presentation/view/widgets/tweetbox/tweet_box_view.dart';

class TweetBoxWidget extends StatefulWidget {

  TweetBoxWidget({Key key}) : super(key: key);

  @override
  _TweetBoxWidgetState createState() => _TweetBoxWidgetState();

}

class _TweetBoxWidgetState extends State<TweetBoxWidget> implements TweetBoxView {

  // Presenter
  TweetBoxPresenter _presenter;

  // Widget variables
  Tweet _tweet;

  @override
  void initState() {
    super.initState();

    // TODO: Add dependency injection
    var localRepository = LocalRepositoryImpl();
    var remoteRepository = RemoteRepositoryImpl();
    var getTweet = GetTweet(localRepository, remoteRepository);
    var getClassifications = GetClassifications(localRepository, remoteRepository);
    _presenter = TweetBoxPresenter(this, getTweet, getClassifications);
  }
  
  @override
  Widget build(BuildContext context) {
    return Parent(
        style: AppStyles.tweetBox,
        child: Stack(
            children: [
              Parent(child: AppImages.quote, style: AppStyles.quoteImage),
              Txt(_tweet.content, style: AppStyles.tweetText),
              GestureDetector(onTap: _presenter.loadRandomTweet, child: Parent(child: AppImages.swipeRight, style: AppStyles.swipeRightImage))
            ]
        )
    );
  }

  @override
  void changeCurrentTweet({tweet = Tweet}) {
    setState(() {
      _tweet = tweet;
    });
  }

}


