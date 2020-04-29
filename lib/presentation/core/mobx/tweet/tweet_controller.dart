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
  bool isCurrentURLValid = false;

  @observable
  ObservableFuture<Tweet> currentTweet;

  @action
  validateTweetURL({String tweetURL}) {
    try {
      isCurrentURLValid = _validateTweetUrl.withParms(tweetURL: tweetURL).execute();
    }
    catch (_) {
      isCurrentURLValid = false;
    }
  }

  @action
  getSearchTweet({String tweetURL}) {
    currentTweet = _getTweetFromUrl
        .withParams(tweetURL: tweetURL)
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