import 'package:twittertweetanalysisapp/domain/core/async_interactor.dart';
import 'package:twittertweetanalysisapp/domain/model/classification_domain.dart';
import 'package:twittertweetanalysisapp/domain/repository/local/local_repository.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/remote_repository.dart';

class GetClassifications implements AsyncInteractor<List<ClassificationDomain>> {

  @override
  LocalRepository localRepository;

  @override
  RemoteRepository remoteRepository;

  GetClassifications(this.localRepository, this.remoteRepository);

  @override
  Future<List<ClassificationDomain>> execute() {
    var cachedObjectList = localRepository.getList(ClassificationDomain.cacheKey);
    if (cachedObjectList != null) {
      return cachedObjectList;
    }

    var remoteObjectList = remoteRepository.getClassifications();
    return remoteObjectList;
  }

  @override
  cacheResponse(Future<List<ClassificationDomain>> response) {
    // TODO: implement cacheResponse
    throw UnimplementedError();
  }

}