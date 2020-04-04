import 'package:twittertweetanalysisapp/app/domain/model/TweetDomainModel.dart';

abstract class RemoteRepository {

  TweetDomainModel getTweet(String tweetId);

}