import 'package:twittertweetanalysisapp/presentation/model/Tweet.dart';

abstract class SearchBoxView {
  void changeCurrentTweet({tweet: Tweet});
}