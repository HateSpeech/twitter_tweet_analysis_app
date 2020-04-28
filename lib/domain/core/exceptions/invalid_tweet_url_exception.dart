class InvalidTweetURLException implements Exception {

  String _tweetURL;
  String _errorMsg;

  InvalidTweetURLException(this._tweetURL, this._errorMsg) {
    print("$_tweetURL - $_errorMsg");
  }

}