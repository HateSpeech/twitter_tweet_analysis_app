// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classification_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClassificationController on TweetBaseController, Store {
  final _$classificationsAtom =
      Atom(name: 'TweetBaseController.classifications');

  @override
  ObservableFuture<List<Classification>> get classifications {
    _$classificationsAtom.context.enforceReadPolicy(_$classificationsAtom);
    _$classificationsAtom.reportObserved();
    return super.classifications;
  }

  @override
  set classifications(ObservableFuture<List<Classification>> value) {
    _$classificationsAtom.context.conditionallyRunInAction(() {
      super.classifications = value;
      _$classificationsAtom.reportChanged();
    }, _$classificationsAtom, name: '${_$classificationsAtom.name}_set');
  }

  final _$TweetBaseControllerActionController =
      ActionController(name: 'TweetBaseController');

  @override
  dynamic getClassifications() {
    final _$actionInfo = _$TweetBaseControllerActionController.startAction();
    try {
      return super.getClassifications();
    } finally {
      _$TweetBaseControllerActionController.endAction(_$actionInfo);
    }
  }
}
