import 'package:mobx/mobx.dart';
import 'package:twittertweetanalysisapp/domain/interactors/get_tweet.dart';
import 'package:twittertweetanalysisapp/domain/interactors/get_tweet_from_url.dart';
import 'package:twittertweetanalysisapp/domain/interactors/validate_twitter_url.dart';
import 'package:twittertweetanalysisapp/presentation/model/Tweet.dart';

part 'tweet_controller.g.dart';

class TweetController = TweetBaseController with _$TweetController;

abstract class TweetBaseController with Store {

  // Interactors
  GetTweet _getTweet;
  GetTweetFromUrl _getTweetFromUrl;
  ValidateTweetUrl _validateTweetUrl;

  TweetBaseController(this._getTweet, this._getTweetFromUrl, this._validateTweetUrl) {
    getTweet();
  }

  @observable
  bool isCurrentUrlValid = false;

  @observable
  ObservableFuture<Tweet> currentTweet;

  @action
  validateTweetUrl({String tweetUrl}) {
    try {
      isCurrentUrlValid = _validateTweetUrl.withParms(tweetUrl: tweetUrl).execute();
    }
    catch (_) {
      isCurrentUrlValid = false;
    }
  }

  @action
  getSearchTweet({String tweetUrl}) {
    currentTweet = _getTweetFromUrl
        .withParams(tweetUrl: tweetUrl)
        .execute()
        .then((domainModel) => Tweet(domainModel))
        .asObservable();
  }
  
  @action
  getTweet() {
    currentTweet = _getTweet
        .execute()
        .then((domainModel) => Tweet(domainModel))
        .asObservable();
  }

}