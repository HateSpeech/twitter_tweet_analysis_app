import 'package:twittertweetanalysisapp/domain/core/domain_model.dart';

abstract class PresentationModel<T extends DomainModel> {

  T asDomainModel();

}