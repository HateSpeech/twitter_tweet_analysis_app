import 'package:twittertweetanalysisapp/domain/core/async_interactor.dart';
import 'package:twittertweetanalysisapp/domain/model/classification_model.dart';
import 'package:twittertweetanalysisapp/domain/repository/local/local_repository.dart';
import 'package:twittertweetanalysisapp/domain/repository/remote/remote_repository.dart';

class GetClassifications implements AsyncInteractor<List<ClassificationModel>> {

  @override
  LocalRepository localRepository;

  @override
  RemoteRepository remoteRepository;

  GetClassifications(this.localRepository, this.remoteRepository);

  @override
  Future<List<ClassificationModel>> execute() {
    var cachedObjectList = localRepository.getList(ClassificationModel.cacheKey);
    if (cachedObjectList != null) {
      return cachedObjectList;
    }

    var remoteObjectList = remoteRepository.getClassifications();
    return remoteObjectList;
  }

  @override
  cacheResponse(Future<List<ClassificationModel>> response) {
    // TODO: implement cacheResponse
    throw UnimplementedError();
  }

}