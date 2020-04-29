import 'package:twittertweetanalysisapp/domain/core/exceptions/invalid_tweet_url_exception.dart';
import 'package:twittertweetanalysisapp/domain/core/sync_interactor.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_strings.dart';

class ValidateTweetUrl implements SyncInteractor<bool> {

  String _twitterUrl;
  RegExp _regex = RegExp(r"http(s)?:\/\/((www|m|mobile)\.)?twitter\.com\/([A-Za-z0-9_]{1,15})\/status\/\d+", multiLine: false, caseSensitive: false);

  ValidateTweetUrl();

  @override
  bool execute() {
    // Validate min URL length
    if (_twitterUrl != null && _twitterUrl.isEmpty) {
      throw InvalidTweetUrlException(_twitterUrl, AppStrings.invalidTweetUrl);
    }

    // Validate Twitter URL
    if (!_regex.hasMatch(_twitterUrl)) {
      throw InvalidTweetUrlException(_twitterUrl, AppStrings.invalidTweetUrl);
    }

    return true;
  }

  ValidateTweetUrl withParms({String tweetUrl}) {
    _twitterUrl = tweetUrl;
    return this;
  }

}