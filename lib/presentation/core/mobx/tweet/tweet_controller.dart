import 'package:mobx/mobx.dart';
import 'package:twittertweetanalysisapp/domain/interactors/get_tweet.dart';
import 'package:twittertweetanalysisapp/domain/model/tweet_model.dart';
part 'tweet_controller.g.dart';

class TweetController = TweetBaseController with _$TweetController;

abstract class TweetBaseController with Store {

  // Interactors
  GetTweet _getTweet;

  TweetBaseController(this._getTweet) {
    getTweet();
  }

  @observable
  ObservableFuture<TweetModel> tweet;

  @action
  getTweet({String tweetURL}) {
    tweet = _getTweet.withParms(tweetURL: tweetURL).execute().asObservable();
  }

}