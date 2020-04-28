import 'package:twittertweetanalysisapp/data/repository/remote/services/remote_services.dart';
import 'package:twittertweetanalysisapp/domain/model/classification_domain.dart';
import 'package:twittertweetanalysisapp/domain/model/tweet_domain.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/remote_repository.dart';

class RemoteRepositoryImpl extends RemoteRepository {
  RemoteServices _remoteServices;

  RemoteRepositoryImpl(this._remoteServices);

  @override
  Future<TweetDomain> getTweet({String tweetURL}) async {
    if (tweetURL == null) {
      return _remoteServices
          .getRandomTweet()
          .then((entity) => entity.asDomainModel());
    }

    return _remoteServices
        .getSpecificTweet(tweetURL: tweetURL)
        .then((entity) => entity.asDomainModel());
  }

  @override
  Future<List<ClassificationDomain>> getClassifications() async {
    return _remoteServices
        .getClassifications()
        .then((entityList) => entityList.map((entity) => entity.asDomainModel()).toList());
  }


}