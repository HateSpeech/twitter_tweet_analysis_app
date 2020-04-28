import 'package:twittertweetanalysisapp/domain/core/domain_model.dart';

class TweetDomain extends DomainModel {

  static String cacheKey = "TWEET_DOMAIN_MODEL";

  String tweetId;
  String tweetTwitterId;
  String content;

  TweetDomain(String tweetId, String tweetTwitterId, String content) {
    this.tweetId = tweetId;
    this.tweetTwitterId = tweetTwitterId;
    this.content = content;
  }

}