import 'package:twittertweetanalysisapp/data/entity/classification/classification_entity.dart';
import 'package:twittertweetanalysisapp/data/repository/remote/services/remote_services.dart';
import 'package:twittertweetanalysisapp/domain/model/classification_model.dart';
import 'package:twittertweetanalysisapp/domain/model/tweet_model.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/remote_repository.dart';

class RemoteRepositoryImpl extends RemoteRepository {
  RemoteServices _remoteServices;

  RemoteRepositoryImpl(this._remoteServices);

  @override
  Future<TweetModel> getTweet({String tweetURL}) async {
    if (tweetURL == null) {
      return _remoteServices.getRandomTweet().then((value) =>
          value.asDomainModel());
    }

    return _remoteServices.getSpecificTweet(tweetURL: tweetURL).then((value) => value.asDomainModel());
  }

  @override
  Future<List<ClassificationModel>> getClassifications() async {
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