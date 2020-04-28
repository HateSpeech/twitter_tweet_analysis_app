import 'package:twittertweetanalysisapp/data/core/entity.dart';
import 'package:twittertweetanalysisapp/domain/model/tweet_model.dart';

class TweetEntity extends Entity<TweetModel> {

  String tweetId;
  String tweetTwitterId;
  String content;

  TweetEntity(String tweetId, String twitterTweetId, String content) {
    this.tweetId = tweetId;
    this.tweetTwitterId = twitterTweetId;
    this.content = content;
  }

  TweetEntity.fromDomainObject(TweetModel domainModel) {
    this.tweetId = domainModel.tweetId;
    this.tweetTwitterId = domainModel.tweetTwitterId;
    this.content = domainModel.content;
  }

  @override
  TweetModel asDomainModel() {
    return TweetModel(tweetId, tweetTwitterId, content);
  }

}