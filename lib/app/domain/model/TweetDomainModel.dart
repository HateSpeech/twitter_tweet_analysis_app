import 'package:twittertweetanalysisapp/app/domain/core/DomainModel.dart';

class TweetDomainModel extends DomainModel {

  static String cacheKey = "TWEET_DOMAIN_MODEL";

  String tweetId;
  String tweetTwitterId;
  String content;

  TweetDomainModel(String tweetId, String tweetTwitterId, String content) {
    this.tweetId = tweetId;
    this.tweetTwitterId = tweetTwitterId;
    this.content = content;
  }

}