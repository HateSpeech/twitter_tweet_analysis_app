import 'package:bloc/bloc.dart';
import 'package:twittertweetanalysisapp/domain/interactors/GetTweet.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/events/get_random_tweet.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/events/get_tweet_from_url.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/states/get_tweet_error.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/states/get_tweet_success.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/states/get_tweet_uninitialized.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/tweet_event.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/tweet_state.dart';
import 'package:twittertweetanalysisapp/presentation/model/Tweet.dart';


class TweetBloc extends Bloc<TweetEvent, TweetState> {
  // Interactors
  GetTweet _getTweet;

  TweetBloc(this._getTweet);

  @override
  TweetState get initialState => GetTweetUninitialized();

  @override
  Stream<TweetState> mapEventToState(TweetEvent event) async* {

    final currentState = state;

    if (currentState is GetTweetUninitialized) {
      var tweetDomain = _getTweet.execute();
      var tweetPresentation = Tweet(tweetDomain);
      yield GetTweetSuccess(tweet: tweetPresentation);
      return;
    }
    else if (event is GetRandomTweet) {
      _mapGetRandom(event);
    }
    else if (event is GetTweetFromURL) {
      _mapGetFromURL(event);
    }
    else {
      yield GetTweetError();
    }

  }

  Stream<TweetState> _mapGetRandom(GetRandomTweet getRandomTweet) async* {

    try {
      var tweetDomain = _getTweet.execute();
      var tweetPresentation = Tweet(tweetDomain);
      yield GetTweetSuccess(tweet: tweetPresentation);
    }
    catch (_) {
      yield GetTweetError();
    }

  }

  Stream<TweetState> _mapGetFromURL(GetTweetFromURL getTweetFromURL) async* {

    try {
      var tweetDomain = _getTweet.withParms(tweetURL: getTweetFromURL.tweetURL)
          .execute();
      var tweetPresentation = Tweet(tweetDomain);
      yield GetTweetSuccess(tweet: tweetPresentation);
    }
    catch (_) {
      yield GetTweetError();
    }

  }

}