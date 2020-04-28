// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ErrorController on ErrorBaseController, Store {
  final _$hasErrorAtom = Atom(name: 'ErrorBaseController.hasError');

  @override
  bool get hasError {
    _$hasErrorAtom.context.enforceReadPolicy(_$hasErrorAtom);
    _$hasErrorAtom.reportObserved();
    return super.hasError;
  }

  @override
  set hasError(bool value) {
    _$hasErrorAtom.context.conditionallyRunInAction(() {
      super.hasError = value;
      _$hasErrorAtom.reportChanged();
    }, _$hasErrorAtom, name: '${_$hasErrorAtom.name}_set');
  }

  final _$errorMsgAtom = Atom(name: 'ErrorBaseController.errorMsg');

  @override
  String get errorMsg {
    _$errorMsgAtom.context.enforceReadPolicy(_$errorMsgAtom);
    _$errorMsgAtom.reportObserved();
    return super.errorMsg;
  }

  @override
  set errorMsg(String value) {
    _$errorMsgAtom.context.conditionallyRunInAction(() {
      super.errorMsg = value;
      _$errorMsgAtom.reportChanged();
    }, _$errorMsgAtom, name: '${_$errorMsgAtom.name}_set');
  }

  final _$ErrorBaseControllerActionController =
      ActionController(name: 'ErrorBaseController');

  @override
  dynamic setErrorMessage({String errorMsg}) {
    final _$actionInfo = _$ErrorBaseControllerActionController.startAction();
    try {
      return super.setErrorMessage(errorMsg: errorMsg);
    } finally {
      _$ErrorBaseControllerActionController.endAction(_$actionInfo);
    }
  }
}
