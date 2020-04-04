import 'package:twittertweetanalysisapp/app/data/core/Entity.dart';
import 'package:twittertweetanalysisapp/app/domain/core/DomainModel.dart';
import 'package:twittertweetanalysisapp/app/domain/model/ClassificationDomainModel.dart';

class ClassificationEntity extends Entity {

  int classificationId;
  String description;

  ClassificationEntity(int classificationId, String description) {
    this.classificationId = classificationId;
    this.description = description;
  }

  @override
  DomainModel asDomainModel() {
    return ClassificationDomainModel(classificationId, description);
  }

}