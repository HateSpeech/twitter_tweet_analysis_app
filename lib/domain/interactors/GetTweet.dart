import 'package:twittertweetanalysisapp/domain/core/Interactor.dart';
import 'package:twittertweetanalysisapp/domain/core/exceptions/InvalidTweetIdException.dart';
import 'package:twittertweetanalysisapp/domain/model/TweetDomainModel.dart';
import 'package:twittertweetanalysisapp/domain/repository/local/LocalRepository.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/RemoteRepository.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_strings.dart';

class GetTweet implements Interactor<TweetDomainModel, TweetDomainModel> {

  String _tweetURL;

  static var urlMaxLenght = 80;

  @override
  LocalRepository localRepository;

  @override
  RemoteRepository remoteRepository;

  GetTweet(this.localRepository, this.remoteRepository);

  @override
  TweetDomainModel execute() {
    if (_tweetURL != null && _tweetURL.length >= urlMaxLenght) {
      throw InvalidTweetURLException(_tweetURL, AppStrings.invalidTweetURL);
    }

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