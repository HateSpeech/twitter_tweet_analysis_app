import 'package:twittertweetanalysisapp/app/data/entity/TweetEntity.dart';
import 'package:twittertweetanalysisapp/app/domain/model/TweetDomainModel.dart';
import 'package:twittertweetanalysisapp/app/domain/repository/remote/RemoteRepository.dart';

class RemoteRepositoryImpl extends RemoteRepository {

  @override
  TweetDomainModel getTweet(String tweetId) {
    // TODO: Connect to API
    var tweet = TweetEntity(tweetId, "1050118621198921728", "This is a tweet bod from remote repository");
    return tweet.asDomainModel();
  }

}