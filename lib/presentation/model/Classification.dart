import 'package:twittertweetanalysisapp/domain/model/classification_domain.dart';
import 'package:twittertweetanalysisapp/presentation/core/presentation_model.dart';

class Classification extends PresentationModel<ClassificationDomain> {

  int classificationId;
  String description;

  Classification(ClassificationDomain domainModel) {
    this.classificationId = domainModel.classificationId;
    this.description = domainModel.description;
  }

  @override
  ClassificationDomain asDomainModel() {
    return ClassificationDomain(classificationId, description);
  }

}