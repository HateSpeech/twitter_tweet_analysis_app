import 'package:twittertweetanalysisapp/domain/core/async_interactor.dart';
import 'package:twittertweetanalysisapp/domain/interactors/validate_twitter_url.dart';
import 'package:twittertweetanalysisapp/domain/model/tweet_model.dart';
import 'package:twittertweetanalysisapp/domain/repository/local/local_repository.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/remote_repository.dart';

class GetTweet implements AsyncInteractor<TweetModel> {

  String _tweetURL;

  // Interactors
  ValidateTwitterURL _validateTwitterURL;

  @override
  LocalRepository localRepository;

  @override
  RemoteRepository remoteRepository;

  GetTweet(this.localRepository, this.remoteRepository, this._validateTwitterURL);

  @override
  Future<TweetModel> execute() {
    if (_tweetURL != null) {
      _validateTwitterURL.withParms(tweetURL: _tweetURL).execute();
    }

    var cachedObject = localRepository.getObject(TweetModel.cacheKey, id: _tweetURL);
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
  cacheResponse(Future<TweetModel> response) {
    // TODO: implement cacheResponse
    throw UnimplementedError();
  }

}