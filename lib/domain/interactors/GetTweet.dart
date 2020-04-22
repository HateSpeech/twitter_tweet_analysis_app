import 'package:twittertweetanalysisapp/domain/core/Interactor.dart';
import 'package:twittertweetanalysisapp/domain/core/exceptions/InvalidTweetIdException.dart';
import 'package:twittertweetanalysisapp/domain/model/TweetDomainModel.dart';
import 'package:twittertweetanalysisapp/domain/repository/local/LocalRepository.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/RemoteRepository.dart';

class GetTweet implements Interactor<TweetDomainModel, TweetDomainModel> {

  String _tweetURL;

  @override
  LocalRepository localRepository;

  @override
  RemoteRepository remoteRepository;

  GetTweet(this.localRepository, this.remoteRepository);

  @override
  TweetDomainModel execute() {
    var cachedObject = localRepository.getObject(TweetDomainModel.cacheKey, id: _tweetURL);
    if (cachedObject != null) {
      return cachedObject;
    }

    var remoteObject = remoteRepository.getTweet(tweetURL: _tweetURL);
    localRepository.putObject(TweetDomainModel.cacheKey, remoteObject, true);

    return remoteObject;
  }

  GetTweet withParms({String tweetURL}) {
    _tweetURL = tweetURL;
    return this;
  }

}