// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TweetController on TweetBaseController, Store {
  final _$isCurrentUrlValidAtom =
      Atom(name: 'TweetBaseController.isCurrentUrlValid');

  @override
  bool get isCurrentUrlValid {
    _$isCurrentUrlValidAtom.context.enforceReadPolicy(_$isCurrentUrlValidAtom);
    _$isCurrentUrlValidAtom.reportObserved();
    return super.isCurrentUrlValid;
  }

  @override
  set isCurrentUrlValid(bool value) {
    _$isCurrentUrlValidAtom.context.conditionallyRunInAction(() {
      super.isCurrentUrlValid = value;
      _$isCurrentUrlValidAtom.reportChanged();
    }, _$isCurrentUrlValidAtom, name: '${_$isCurrentUrlValidAtom.name}_set');
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
  dynamic validateTweetUrl({String tweetUrl}) {
    final _$actionInfo = _$TweetBaseControllerActionController.startAction();
    try {
      return super.validateTweetUrl(tweetUrl: tweetUrl);
    } finally {
      _$TweetBaseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getSearchTweet({String tweetUrl}) {
    final _$actionInfo = _$TweetBaseControllerActionController.startAction();
    try {
      return super.getSearchTweet(tweetUrl: tweetUrl);
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
