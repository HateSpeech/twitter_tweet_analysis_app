import 'package:twittertweetanalysisapp/app/domain/core/Interactor.dart';
import 'package:twittertweetanalysisapp/app/domain/core/exceptions/InvalidTweetIdException.dart';
import 'package:twittertweetanalysisapp/app/domain/model/TweetDomainModel.dart';
import 'package:twittertweetanalysisapp/app/domain/repository/local/LocalRepository.dart';
import 'package:twittertweetanalysisapp/app/domain/repository/remote/RemoteRepository.dart';

class GetTweet implements Interactor<TweetDomainModel, TweetDomainModel> {

  String _tweetId;

  @override
  LocalRepository localRepository;

  @override
  RemoteRepository remoteRepository;

  GetTweet(this.localRepository, this.remoteRepository);

  @override
  TweetDomainModel execute() {
    if (_tweetId == null || _tweetId.isEmpty) {
      throw InvalidTweetIdException(_tweetId, "Invalid tweetId");
    }

    var cachedObject = localRepository.getObject(TweetDomainModel.cacheKey, id: _tweetId);
    if (cachedObject != null) {
      return cachedObject;
    }

    var remoteObject = remoteRepository.getTweet(_tweetId);
    localRepository.putObject(TweetDomainModel.cacheKey, remoteObject, true);

    return remoteObject;
  }

  GetTweet withParms(String tweetId) {
    _tweetId = tweetId;
    return this;
  }

}