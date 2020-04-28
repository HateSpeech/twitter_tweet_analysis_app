import 'package:twittertweetanalysisapp/domain/core/domain_model.dart';

class TweetModel extends DomainModel {

  static String cacheKey = "TWEET_DOMAIN_MODEL";

  String tweetId;
  String tweetTwitterId;
  String content;

  TweetModel(String tweetId, String tweetTwitterId, String content) {
    this.tweetId = tweetId;
    this.tweetTwitterId = tweetTwitterId;
    this.content = content;
  }

}