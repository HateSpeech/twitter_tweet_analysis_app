import 'dart:math';

import 'package:twittertweetanalysisapp/data/entity/classification_entity.dart';
import 'package:twittertweetanalysisapp/data/entity/tweet_entity.dart';
import 'package:twittertweetanalysisapp/domain/model/classification_model.dart';
import 'package:twittertweetanalysisapp/domain/model/tweet_model.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/remote_repository.dart';

class RemoteRepositoryImpl extends RemoteRepository {

  @override
  Future<TweetModel> getTweet({String tweetURL}) {
    // TODO: Connect to API
    if (tweetURL == null) {
      var tweet = TweetEntity(tweetURL, "1050118621198921728", "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat mas");
      return Future.value(tweet.asDomainModel());
    }

    // TODO: Connect to API
    var tweet = TweetEntity(tweetURL, "1050118621198921728", "This is a SPECIFIC tweet body from remote repository... URL: $tweetURL");
    return Future.value(tweet.asDomainModel());
  }

  @override
  Future<List<ClassificationModel>> getClassifications() {
    // TODO: Connect to API
    var classificationList = List();
    classificationList.add(ClassificationEntity(0, "Classification A description;"));
    classificationList.add(ClassificationEntity(1, "Classification B description;"));
    classificationList.add(ClassificationEntity(2, "Classification C description;"));
    classificationList.add(ClassificationEntity(3, "Classification D description;"));
    classificationList.add(ClassificationEntity(4, "Classification E description;"));
    classificationList.add(ClassificationEntity(5, "Classification F description;"));
    classificationList.add(ClassificationEntity(6, "Classification G description;"));
    var domainClassificationList = classificationList.map<ClassificationModel>((e) => e.asDomainModel()).toList();
    return Future.value(domainClassificationList);
  }


}