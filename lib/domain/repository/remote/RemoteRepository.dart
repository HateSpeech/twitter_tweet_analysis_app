import 'package:twittertweetanalysisapp/domain/model/ClassificationDomainModel.dart';
import 'package:twittertweetanalysisapp/domain/model/TweetDomainModel.dart';

abstract class RemoteRepository {

  TweetDomainModel getTweet(String tweetId);
  List<ClassificationDomainModel> getClassifications();

}