import 'package:twittertweetanalysisapp/domain/core/domain_model.dart';

class ClassificationModel extends DomainModel {

  static String cacheKey = "CLASSIFICATION_DOMAIN_MODEL";

  int classificationId;
  String description;

  ClassificationModel(int classificationId, String description) {
    this.classificationId = classificationId;
    this.description = description;
  }

}