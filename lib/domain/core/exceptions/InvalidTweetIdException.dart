class InvalidTweetIdException implements Exception {

  String _tweetId;
  String _errorMsg;

  InvalidTweetIdException(_tweetId, _errorMsg);

}