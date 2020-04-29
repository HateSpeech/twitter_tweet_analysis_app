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
  Future<TweetEntity> getSpecificTweet({String tweetUrl}) async {
    Response response = await _requestManager.dio.get("/specificTweet");
    return TweetEntity.fromJson(response.data);
  }

  /// Gets all classifications
  Future<List<ClassificationEntity>> getClassifications() async {
    Response response = await _requestManager.dio.get("/classifications");
    var responseList = response.data as List;
    var mappedResponse = responseList.map((e) => ClassificationEntity.fromJson(e)).toList();
    return mappedResponse;
  }

}