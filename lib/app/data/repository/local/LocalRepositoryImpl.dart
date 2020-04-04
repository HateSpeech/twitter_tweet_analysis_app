import 'package:twittertweetanalysisapp/app/domain/core/DomainModel.dart';
import 'package:twittertweetanalysisapp/app/domain/repository/local/LocalRepository.dart';

class LocalRepositoryImpl extends LocalRepository {

  @override
  DomainModel getObject(String cacheKey, {id = String}) {
    return null;
  }

  @override
  List<DomainModel> getList(String cacheKey, {id = String}) {
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