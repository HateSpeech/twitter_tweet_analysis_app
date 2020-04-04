import 'package:twittertweetanalysisapp/app/domain/model/ClassificationDomainModel.dart';
import 'package:twittertweetanalysisapp/app/presentation/core/PresentationModel.dart';

class Classification extends PresentationModel<ClassificationDomainModel> {

  int classificationId;
  String description;

  Classification(ClassificationDomainModel domainModel) {
    this.classificationId = domainModel.classificationId;
    this.description = domainModel.description;
  }

  @override
  ClassificationDomainModel asDomainModel() {
    return ClassificationDomainModel(classificationId, description);
  }

}