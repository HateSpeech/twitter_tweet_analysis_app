import 'package:twittertweetanalysisapp/domain/core/DomainModel.dart';
import 'package:twittertweetanalysisapp/domain/repository/local/LocalRepository.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/RemoteRepository.dart';

abstract class Interactor<ReturnType, RepositoryModel extends DomainModel> {

  LocalRepository localRepository;
  RemoteRepository remoteRepository;

  ReturnType execute();

}