import 'package:dio/dio.dart';
import 'package:twittertweetanalysisapp/data/core/request_manager.dart';
import 'package:twittertweetanalysisapp/data/entity/classification/classification_entity.dart';
import 'package:twittertweetanalysisapp/data/entity/tweet/tweet_entity.dart';

class RemoteServices {
  RequestManager _requestManager;

  RemoteServices(this._requestManager);

  /// Gets a tweet
  Future<TweetEntity> getRandomTweet() async {
    Response response = await _requestManager.dio.get("/randomTweet");
    return TweetEntity.fromJson(response.data);
  }

  /// Searchs for a specific tweet given an url
  Future<TweetEntity> getSpecificTweet({String tweetURL}) async {
    Response response = await _requestManager.dio.get("/specificTweet");
    return TweetEntity.fromJson(response.data);
  }

  /// Gets all classifications
  Future<List<ClassificationEntity>> getClassifications({String tweetURL}) async {
    Response response = await _requestManager.dio.get("");
    return Future.error(Object());
//    return .fromJson(response.data);
  }

}