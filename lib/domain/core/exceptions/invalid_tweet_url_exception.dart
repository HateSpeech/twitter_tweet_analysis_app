class InvalidTweetUrlException implements Exception {

  String _tweetUrl;
  String _errorMsg;

  InvalidTweetUrlException(this._tweetUrl, this._errorMsg) {
    print("$_tweetUrl - $_errorMsg");
  }

}