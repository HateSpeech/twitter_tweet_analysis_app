import 'package:twittertweetanalysisapp/domain/core/BasicInteractor.dart';
import 'package:twittertweetanalysisapp/domain/core/exceptions/InvalidTweetIdException.dart';
import 'package:twittertweetanalysisapp/presentation/custom/app_strings.dart';

class ValidateTwitterURL implements BasicInteractor<bool> {

  String _twitterURL;
  RegExp _regex = RegExp("http(?:s)?:\/\/(?:www\.)?twitter\.com\/([a-zA-Z0-9_]+)", caseSensitive: false, multiLine: false);

  static var urlMaxLenght = 80;

  ValidateTwitterURL();

  @override
  bool execute() {
    // Validate min URL length
    if ((_twitterURL!= null && _twitterURL.isEmpty) || (_twitterURL != null && _twitterURL.length >= urlMaxLenght)) {
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