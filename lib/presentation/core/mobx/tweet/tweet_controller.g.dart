// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TweetController on TweetBaseController, Store {
  final _$tweetAtom = Atom(name: 'TweetBaseController.tweet');

  @override
  ObservableFuture<TweetModel> get tweet {
    _$tweetAtom.context.enforceReadPolicy(_$tweetAtom);
    _$tweetAtom.reportObserved();
    return super.tweet;
  }

  @override
  set tweet(ObservableFuture<TweetModel> value) {
    _$tweetAtom.context.conditionallyRunInAction(() {
      super.tweet = value;
      _$tweetAtom.reportChanged();
    }, _$tweetAtom, name: '${_$tweetAtom.name}_set');
  }

  final _$TweetBaseControllerActionController =
      ActionController(name: 'TweetBaseController');

  @override
  dynamic getTweet({String tweetURL}) {
    final _$actionInfo = _$TweetBaseControllerActionController.startAction();
    try {
      return super.getTweet(tweetURL: tweetURL);
    } finally {
      _$TweetBaseControllerActionController.endAction(_$actionInfo);
    }
  }
}
