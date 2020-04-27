import 'package:twittertweetanalysisapp/presentation/core/bloc/tweet/tweet_event.dart';
import 'package:meta/meta.dart';

class GetTweetFromURL extends TweetEvent {

  final String tweetURL;

  const GetTweetFromURL({@required this.tweetURL});

  @override
  String toString() => "GetTweetFromURL { url: $tweetURL }";

}