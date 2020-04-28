import 'package:twittertweetanalysisapp/domain/core/DomainModel.dart';
import 'package:twittertweetanalysisapp/domain/repository/local/LocalRepository.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/RemoteRepository.dart';

abstract class AsyncInteractor<ReturnType, RepositoryModel extends DomainModel> {

  LocalRepository localRepository;
  RemoteRepository remoteRepository;

  Future<ReturnType> execute();

}