import 'package:twittertweetanalysisapp/domain/interactors/GetClassifications.dart';
import 'package:twittertweetanalysisapp/domain/interactors/GetTweet.dart';
import 'package:twittertweetanalysisapp/presentation/model/Tweet.dart';
import 'package:twittertweetanalysisapp/presentation/view/widgets/tweetbox/tweet_box_view.dart';

class TweetBoxPresenter {
  // View
  TweetBoxView _view;

  // Interactors
  GetTweet _getTweet;
  GetClassifications _getClassifications;

  TweetBoxPresenter(this._view, this._getTweet, this._getClassifications) {
    loadRandomTweet();
  }

  void loadRandomTweet() {
    var tweetDomain = _getTweet.execute();
    var tweetPresentation = Tweet(tweetDomain);
    _view.changeCurrentTweet(tweet: tweetPresentation);
  }

  void loadClassifications() {
    _getClassifications.execute();
  }

}