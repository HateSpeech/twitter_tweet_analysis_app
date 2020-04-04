import 'package:twittertweetanalysisapp/app/domain/model/TweetDomainModel.dart';
import 'package:twittertweetanalysisapp/app/presentation/core/PresentationModel.dart';

class Tweet extends PresentationModel<TweetDomainModel> {

  String tweetId;
  String tweetTwitterId;
  String content;

  Tweet(TweetDomainModel domainModel) {
    this.tweetId = domainModel.tweetId;
    this.tweetTwitterId = domainModel.tweetTwitterId;
    this.content = domainModel.content;
  }

  @override
  TweetDomainModel asDomainModel() {
    return TweetDomainModel(tweetId, tweetTwitterId, content);
  }

}