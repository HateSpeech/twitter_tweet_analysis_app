import 'package:twittertweetanalysisapp/domain/core/DomainModel.dart';

abstract class PresentationModel<T extends DomainModel> {

  T asDomainModel();

}