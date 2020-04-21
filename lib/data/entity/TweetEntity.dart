import 'package:twittertweetanalysisapp/data/core/Entity.dart';
import 'package:twittertweetanalysisapp/domain/model/TweetDomainModel.dart';

class TweetEntity extends Entity<TweetDomainModel> {

  String tweetId;
  String tweetTwitterId;
  String content;

  TweetEntity(String tweetId, String twitterTweetId, String content) {
    this.tweetId = tweetId;
    this.tweetTwitterId = twitterTweetId;
    this.content = content;
  }

  TweetEntity.fromDomainObject(TweetDomainModel domainModel) {
    this.tweetId = domainModel.tweetId;
    this.tweetTwitterId = domainModel.tweetTwitterId;
    this.content = domainModel.content;
  }

  @override
  TweetDomainModel asDomainModel() {
    return TweetDomainModel(tweetId, tweetTwitterId, content);
  }

}