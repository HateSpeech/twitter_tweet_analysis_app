import 'package:twittertweetanalysisapp/presentation/model/Tweet.dart';

import '../tweet_state.dart';

class GetTweetSuccess extends TweetState {
  final Tweet tweet;

  const GetTweetSuccess({ this.tweet });

  @override
  List<Object> get props => [tweet];

  @override
  String toString() =>
      'GetTweetSuccess { tweet: $tweet }';
}