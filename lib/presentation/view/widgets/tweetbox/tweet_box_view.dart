import 'package:twittertweetanalysisapp/presentation/model/Tweet.dart';

abstract class TweetBoxView {
  void changeCurrentTweet({tweet: Tweet});
}