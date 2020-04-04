import 'package:twittertweetanalysisapp/app/domain/core/Interactor.dart';
import 'package:twittertweetanalysisapp/app/domain/core/exceptions/InvalidTweetIdException.dart';
import 'package:twittertweetanalysisapp/app/domain/model/TweetDomainModel.dart';

class GetTweet implements Interactor<TweetDomainModel> {

  String _tweetId;

  @override
  TweetDomainModel execute() {
    if (_tweetId == null || _tweetId.isEmpty) {
      throw InvalidTweetIdException(_tweetId, "Invalid tweetId");
    }

    return TweetDomainModel(_tweetId, "", DateTime.now());
  }

  GetTweet withParms(String tweetId) {
    _tweetId = tweetId;
    return this;
  }

}