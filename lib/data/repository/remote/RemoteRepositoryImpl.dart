import 'package:twittertweetanalysisapp/data/entity/ClassificationEntity.dart';
import 'package:twittertweetanalysisapp/data/entity/TweetEntity.dart';
import 'package:twittertweetanalysisapp/domain/model/ClassificationDomainModel.dart';
import 'package:twittertweetanalysisapp/domain/model/TweetDomainModel.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/RemoteRepository.dart';

class RemoteRepositoryImpl extends RemoteRepository {

  @override
  TweetDomainModel getTweet({String tweetURL}) {
    // TODO: Connect to API
    if (tweetURL == null) {
      var tweet = TweetEntity(tweetURL, "1050118621198921728", "This is a RANDOM tweet body from remote repository");
      return tweet.asDomainModel();
    }

    // TODO: Connect to API
    var tweet = TweetEntity(tweetURL, "1050118621198921728", "This is a SPECIFIC tweet body from remote repository");
    return tweet.asDomainModel();
  }

  @override
  List<ClassificationDomainModel> getClassifications() {
    // TODO: Connect to API
    var classificationList = List();
    classificationList.add(ClassificationEntity(0, "Classification A description;"));
    classificationList.add(ClassificationEntity(1, "Classification B description;"));
    classificationList.add(ClassificationEntity(2, "Classification C description;"));
    classificationList.add(ClassificationEntity(3, "Classification D description;"));
    classificationList.add(ClassificationEntity(4, "Classification E description;"));
    classificationList.add(ClassificationEntity(5, "Classification F description;"));
    classificationList.add(ClassificationEntity(6, "Classification G description;"));
    var domainClassificationList = classificationList.map<ClassificationDomainModel>((e) => e.asDomainModel()).toList();
    return domainClassificationList;
  }


}