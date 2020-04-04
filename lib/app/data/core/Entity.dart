import 'package:twittertweetanalysisapp/app/domain/core/DomainModel.dart';

abstract class Entity<T extends DomainModel> {
  T asDomainModel();
}