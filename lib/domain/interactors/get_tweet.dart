import 'package:twittertweetanalysisapp/domain/core/async_interactor.dart';
import 'package:twittertweetanalysisapp/domain/model/tweet_domain.dart';
import 'package:twittertweetanalysisapp/domain/repository/local/local_repository.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/remote_repository.dart';

class GetTweet implements AsyncInteractor<TweetDomain> {

  @override
  LocalRepository localRepository;

  @override
  RemoteRepository remoteRepository;

  GetTweet(this.localRepository, this.remoteRepository);

  @override
  Future<TweetDomain> execute() {
    var remoteObject = remoteRepository.getTweet();
    return remoteObject;
  }

  @override
  cacheResponse(Future<TweetDomain> response) {
    // TODO: implement cacheResponse
    throw UnimplementedError();
  }

}