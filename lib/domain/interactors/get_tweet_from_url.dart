import 'package:twittertweetanalysisapp/domain/core/async_interactor.dart';
import 'package:twittertweetanalysisapp/domain/interactors/validate_twitter_url.dart';
import 'package:twittertweetanalysisapp/domain/model/tweet_domain.dart';
import 'package:twittertweetanalysisapp/domain/repository/local/local_repository.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/remote_repository.dart';

class GetTweetFromUrl implements AsyncInteractor<TweetDomain> {
  String _tweetUrl;

  // Interactors
  ValidateTweetUrl _validateTweetUrl;

  @override
  LocalRepository localRepository;

  @override
  RemoteRepository remoteRepository;

  GetTweetFromUrl(this.localRepository, this.remoteRepository, this._validateTweetUrl);

  @override
  Future<TweetDomain> execute() {
    _validateTweetUrl.withParms(tweetUrl: _tweetUrl).execute();

    var remoteObject = remoteRepository.getTweetFromUrl(tweetUrl: _tweetUrl);
    return remoteObject;
  }

  GetTweetFromUrl withParams({String tweetUrl}) {
    _tweetUrl= tweetUrl;
    return this;
  }

  @override
  cacheResponse(Future<TweetDomain> response) {
    // TODO: implement cacheResponse
    throw UnimplementedError();
  }

}