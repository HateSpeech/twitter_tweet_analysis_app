import 'package:twittertweetanalysisapp/domain/core/exceptions/invalid_tweet_url_exception.dart';
import 'package:twittertweetanalysisapp/domain/core/sync_interactor.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_strings.dart';

class ValidateTweetUrl implements SyncInteractor<bool> {

  String _twitterURL;
  RegExp _regex = RegExp(r"http(s)?:\/\/((www|m|mobile)\.)?twitter\.com\/([A-Za-z0-9_]{1,15})\/status\/\d+", multiLine: false, caseSensitive: false);

  ValidateTweetUrl();

  @override
  bool execute() {
    // Validate min URL length
    if (_twitterURL != null && _twitterURL.isEmpty) {
      throw InvalidTweetURLException(_twitterURL, AppStrings.invalidTweetURL);
    }

    // Validate Twitter URL
    if (!_regex.hasMatch(_twitterURL)) {
      throw InvalidTweetURLException(_twitterURL, AppStrings.invalidTweetURL);
    }

    return true;
  }

  ValidateTweetUrl withParms({String tweetURL}) {
    _twitterURL = tweetURL;
    return this;
  }

}