import 'package:twittertweetanalysisapp/domain/model/tweet_domain.dart';
import 'package:twittertweetanalysisapp/presentation/core/presentation_model.dart';

class Tweet extends PresentationModel<TweetDomain> {

  String tweetId;
  String tweetTwitterId;
  String content;

  Tweet(TweetDomain domainModel) {
    this.tweetId = domainModel.tweetId;
    this.tweetTwitterId = domainModel.tweetTwitterId;
    this.content = domainModel.content;
  }

  @override
  TweetDomain asDomainModel() {
    return TweetDomain(tweetId, tweetTwitterId, content);
  }

}