class InvalidTweetURLException implements Exception {

  String _tweetURL;
  String _errorMsg;

  InvalidTweetURLException(_tweetURL, _errorMsg);

}