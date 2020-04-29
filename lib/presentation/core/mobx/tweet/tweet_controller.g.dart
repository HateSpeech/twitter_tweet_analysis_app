// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TweetController on TweetBaseController, Store {
  final _$isCurrentURLValidAtom =
      Atom(name: 'TweetBaseController.isCurrentURLValid');

  @override
  bool get isCurrentURLValid {
    _$isCurrentURLValidAtom.context.enforceReadPolicy(_$isCurrentURLValidAtom);
    _$isCurrentURLValidAtom.reportObserved();
    return super.isCurrentURLValid;
  }

  @override
  set isCurrentURLValid(bool value) {
    _$isCurrentURLValidAtom.context.conditionallyRunInAction(() {
      super.isCurrentURLValid = value;
      _$isCurrentURLValidAtom.reportChanged();
    }, _$isCurrentURLValidAtom, name: '${_$isCurrentURLValidAtom.name}_set');
  }

  final _$currentTweetAtom = Atom(name: 'TweetBaseController.currentTweet');

  @override
  ObservableFuture<Tweet> get currentTweet {
    _$currentTweetAtom.context.enforceReadPolicy(_$currentTweetAtom);
    _$currentTweetAtom.reportObserved();
    return super.currentTweet;
  }

  @override
  set currentTweet(ObservableFuture<Tweet> value) {
    _$currentTweetAtom.context.conditionallyRunInAction(() {
      super.currentTweet = value;
      _$currentTweetAtom.reportChanged();
    }, _$currentTweetAtom, name: '${_$currentTweetAtom.name}_set');
  }

  final _$TweetBaseControllerActionController =
      ActionController(name: 'TweetBaseController');

  @override
  dynamic validateTweetURL({String tweetURL}) {
    final _$actionInfo = _$TweetBaseControllerActionController.startAction();
    try {
      return super.validateTweetURL(tweetURL: tweetURL);
    } finally {
      _$TweetBaseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getSearchTweet({String tweetURL}) {
    final _$actionInfo = _$TweetBaseControllerActionController.startAction();
    try {
      return super.getSearchTweet(tweetURL: tweetURL);
    } finally {
      _$TweetBaseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getTweet() {
    final _$actionInfo = _$TweetBaseControllerActionController.startAction();
    try {
      return super.getTweet();
    } finally {
      _$TweetBaseControllerActionController.endAction(_$actionInfo);
    }
  }
}
