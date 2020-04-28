import 'package:twittertweetanalysisapp/domain/core/domain_model.dart';

abstract class Entity<T extends DomainModel> {

  T asDomainModel();

}