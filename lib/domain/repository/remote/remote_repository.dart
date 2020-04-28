import 'package:twittertweetanalysisapp/domain/model/classification_model.dart';
import 'package:twittertweetanalysisapp/domain/model/tweet_model.dart';

abstract class RemoteRepository {

  Future<TweetModel> getTweet({String tweetURL});
  Future<List<ClassificationModel>> getClassifications();

}