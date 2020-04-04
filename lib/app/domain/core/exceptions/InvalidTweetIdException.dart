class InvalidTweetIdException implements Exception {
  String _tweetId;
  String _errorMsg;

  InvalidTweetIdException(this._tweetId, this._errorMsg);
}