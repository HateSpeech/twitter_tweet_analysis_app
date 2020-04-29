import 'package:twittertweetanalysisapp/domain/core/async_interactor.dart';
import 'package:twittertweetanalysisapp/domain/interactors/validate_twitter_url.dart';
import 'package:twittertweetanalysisapp/domain/model/tweet_domain.dart';
import 'package:twittertweetanalysisapp/domain/repository/local/local_repository.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/remote_repository.dart';

class GetTweetFromUrl implements AsyncInteractor<TweetDomain> {
  String _tweetURL;

  // Interactors
  ValidateTweetUrl _validateTweetURL;

  @override
  LocalRepository localRepository;

  @override
  RemoteRepository remoteRepository;

  GetTweetFromUrl(this.localRepository, this.remoteRepository, this._validateTweetURL);

  @override
  Future<TweetDomain> execute() {
    _validateTweetURL.withParms(tweetURL: _tweetURL).execute();

    var remoteObject = remoteRepository.getTweet();
    return remoteObject;
  }

  GetTweetFromUrl withParams({String tweetURL}) {
    _tweetURL= tweetURL;
    return this;
  }

  @override
  cacheResponse(Future<TweetDomain> response) {
    // TODO: implement cacheResponse
    throw UnimplementedError();
  }

}