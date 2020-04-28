import 'package:twittertweetanalysisapp/domain/model/classification_domain.dart';
import 'package:twittertweetanalysisapp/domain/model/tweet_domain.dart';

abstract class RemoteRepository {

  Future<TweetDomain> getTweet({String tweetURL});
  Future<List<ClassificationDomain>> getClassifications();

}