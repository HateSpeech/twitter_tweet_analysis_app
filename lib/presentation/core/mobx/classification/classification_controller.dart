import 'package:mobx/mobx.dart';
import 'package:twittertweetanalysisapp/domain/interactors/get_classifications.dart';
import 'package:twittertweetanalysisapp/presentation/model/Classification.dart';

part 'classification_controller.g.dart';

class ClassificationController = TweetBaseController with _$ClassificationController;

abstract class TweetBaseController with Store {

  // Interactors
  GetClassifications _getClassifications;

  TweetBaseController(this._getClassifications);

  @observable
  ObservableFuture<List<Classification>> classifications;

  @action
  getClassifications() {
    classifications = _getClassifications
        .execute()
        .then((domainModelList) => domainModelList.map((domainModel) => Classification(domainModel)).toList())
        .asObservable();
  }

}