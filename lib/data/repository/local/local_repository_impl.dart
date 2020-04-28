import 'package:twittertweetanalysisapp/domain/core/domain_model.dart';
import 'package:twittertweetanalysisapp/domain/repository/local/local_repository.dart';

class LocalRepositoryImpl extends LocalRepository {

  @override
  Future<DomainModel> getObject(String cacheKey, {id = String}) {
    return null;
  }

  @override
  Future<List<DomainModel>> getList(String cacheKey, {id = String}) {
    return null;
  }

  @override
  bool putObject(String cacheKey, DomainModel model, bool override, {cacheLimitDate = DateTime}) {
    return true;
  }

  @override
  bool putList(String cacheKey, List<DomainModel> modelList, bool override, {cacheLimitDate = DateTime}) {
    return true;
  }

  @override
  bool delete(String cacheKey) {
    return true;
  }

}