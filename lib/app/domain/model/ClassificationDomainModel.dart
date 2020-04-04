import 'package:twittertweetanalysisapp/app/domain/core/DomainModel.dart';

class ClassificationDomainModel extends DomainModel {

  static String cacheKey = "CLASSIFICATION_DOMAIN_MODEL";

  int classificationId;
  String description;

  ClassificationDomainModel(int classificationId, String description) {
    this.classificationId = classificationId;
    this.description = description;
  }

}