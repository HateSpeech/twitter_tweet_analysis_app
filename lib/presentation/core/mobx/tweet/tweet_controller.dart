import 'package:mobx/mobx.dart';
import 'package:twittertweetanalysisapp/domain/interactors/GetTweet.dart';
import 'package:twittertweetanalysisapp/presentation/model/Tweet.dart';
part 'tweet_controller.g.dart';

class TweetController = TweetBaseController with _$TweetController;

abstract class TweetBaseController with Store {

  // Interactors
  GetTweet _getTweet;

  TweetBaseController(this._getTweet) {
    getTweet();
  }

  @observable
  Tweet tweet;

  @action
  getTweet({String tweetURL}) {
    try {
      var tweetDomain = _getTweet.withParms(tweetURL: tweetURL).execute();
      tweet = Tweet(tweetDomain);
    }
    catch (_) {

    }
  }

}