import 'package:twittertweetanalysisapp/domain/core/async_interactor.dart';
import 'package:twittertweetanalysisapp/domain/core/exceptions/invalid_tweet_url_exception.dart';
import 'package:twittertweetanalysisapp/domain/interactors/validate_twitter_url.dart';
import 'package:twittertweetanalysisapp/domain/model/tweet_domain.dart';
import 'package:twittertweetanalysisapp/domain/repository/local/local_repository.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/remote_repository.dart';

class GetTweet implements AsyncInteractor<TweetDomain> {

  String _tweetURL;

  // Interactors
  ValidateTwitterURL _validateTwitterURL;

  @override
  LocalRepository localRepository;

  @override
  RemoteRepository remoteRepository;

  GetTweet(this.localRepository, this.remoteRepository, this._validateTwitterURL);

  @override
  Future<TweetDomain> execute() {
    if (_tweetURL != null) {
      try {
        _validateTwitterURL.withParms(tweetURL: _tweetURL).execute();
      }
      on InvalidTweetURLException catch (error) {
        return Future.error(error);
      }
    }

    var cachedObject = localRepository.getObject(TweetDomain.cacheKey, id: _tweetURL);
    if (cachedObject != null) {
      return cachedObject;
    }

    var remoteObject = remoteRepository.getTweet(tweetURL: _tweetURL);
    return remoteObject;
  }

  GetTweet withParms({String tweetURL}) {
    _tweetURL = tweetURL;
    return this;
  }

  @override
  cacheResponse(Future<TweetDomain> response) {
    // TODO: implement cacheResponse
    throw UnimplementedError();
  }

}