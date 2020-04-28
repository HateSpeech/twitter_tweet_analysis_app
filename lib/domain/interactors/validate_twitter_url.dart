import 'package:twittertweetanalysisapp/domain/core/exceptions/invalid_tweet_url_exception.dart';
import 'package:twittertweetanalysisapp/domain/core/sync_interactor.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_strings.dart';

class ValidateTwitterURL implements SyncInteractor<bool> {

  String _twitterURL;
  RegExp _regex = RegExp("http(?:s)?:\/\/(?:www\.)?twitter\.com\/([a-zA-Z0-9_]+)\/status\/\d+", caseSensitive: false, multiLine: false);

  ValidateTwitterURL();

  @override
  bool execute() {
    // Validate min URL length
    if (_twitterURL != null && _twitterURL.isEmpty) {
      throw InvalidTweetURLException(_twitterURL, AppStrings.invalidTweetURL);
    }

    // Validate Twitter URL
    if  (_twitterURL != null && !_regex.hasMatch(_twitterURL)) {
      throw InvalidTweetURLException(_twitterURL, AppStrings.invalidTweetURL);
    }

    return true;
  }

  ValidateTwitterURL withParms({String tweetURL}) {
    _twitterURL = tweetURL;
    return this;
  }

}