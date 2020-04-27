import 'package:bloc/bloc.dart';
import 'package:twittertweetanalysisapp/domain/core/exceptions/InvalidTweetIdException.dart';
import 'package:twittertweetanalysisapp/domain/interactors/GetTweet.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/events/get_random_tweet.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/events/get_tweet_from_url.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/states/get_tweet_error.dart';
import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/states/get_tweet_error_invalid_url.dart';
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

    if (event is GetRandomTweet) {
      try {
        var tweetDomain = _getTweet.withParms(tweetURL: null).execute();
        var tweetPresentation = Tweet(tweetDomain);
        yield GetTweetSuccess(tweet: tweetPresentation);
      }
      on InvalidTweetURLException catch(_) {
        yield GetTweetErrorInvalidURL();
      }
      catch (_) {
        yield GetTweetError();
      }
      return;
    }

    if (event is GetTweetFromURL) {
      try {
        var tweetDomain = _getTweet.withParms(tweetURL: event.tweetURL).execute();
        var tweetPresentation = Tweet(tweetDomain);
        yield GetTweetSuccess(tweet: tweetPresentation);
      }
      on InvalidTweetURLException catch(_) {
        yield GetTweetErrorInvalidURL();
      }
      catch (_) {
        yield GetTweetError();
      }
      return;
    }

    yield GetTweetError();

  }

}