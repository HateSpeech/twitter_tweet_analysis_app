import 'package:twittertweetanalysisapp/domain/model/classification_domain.dart';
import 'package:twittertweetanalysisapp/presentation/core/presentation_model.dart';

class Classification extends PresentationModel<ClassificationDomain> {

  int id;
  String description;

  Classification(ClassificationDomain domainModel) {
    this.id = domainModel.id;
    this.description = domainModel.description;
  }

  @override
  ClassificationDomain asDomainModel() {
    return ClassificationDomain(id, description);
  }

}