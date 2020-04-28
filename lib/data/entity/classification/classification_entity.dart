import 'package:twittertweetanalysisapp/data/core/entity.dart';
import 'package:twittertweetanalysisapp/domain/core/domain_model.dart';
import 'package:twittertweetanalysisapp/domain/model/classification_domain.dart';

class ClassificationEntity extends Entity {

  int classificationId;
  String description;

  ClassificationEntity(int classificationId, String description) {
    this.classificationId = classificationId;
    this.description = description;
  }

  @override
  DomainModel asDomainModel() {
    return ClassificationDomain(classificationId, description);
  }

}