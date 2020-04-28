import 'package:twittertweetanalysisapp/domain/repository/local/local_repository.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/remote_repository.dart';

abstract class AsyncInteractor<ReturnType> {

  LocalRepository localRepository;
  RemoteRepository remoteRepository;

  Future<ReturnType> execute();
  cacheResponse(Future<ReturnType> response);

}