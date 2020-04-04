import 'package:twittertweetanalysisapp/app/domain/core/DomainModel.dart';
import 'package:twittertweetanalysisapp/app/domain/repository/local/LocalRepository.dart';
import 'package:twittertweetanalysisapp/app/domain/repository/remote/RemoteRepository.dart';

abstract class Interactor<ReturnType, RepositoryModel extends DomainModel> {

  LocalRepository localRepository;
  RemoteRepository remoteRepository;

  ReturnType execute();

}