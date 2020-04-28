import 'package:mobx/mobx.dart';

part 'error_controller.g.dart';

class ErrorController = ErrorBaseController with _$ErrorController;

abstract class ErrorBaseController with Store {

  @observable
  bool hasError;

  @observable
  String errorMsg;

  @action
  setErrorMessage({String errorMsg}) {
    hasError = true;
    errorMsg = errorMsg;
  }

}