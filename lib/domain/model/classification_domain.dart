import 'package:twittertweetanalysisapp/domain/core/domain_model.dart';

class ClassificationDomain extends DomainModel {

  static String cacheKey = "CLASSIFICATION_DOMAIN_MODEL";

  int id;
  String description;

  ClassificationDomain(int id, String description) {
    this.id = id;
    this.description = description;
  }

}