import 'package:twittertweetanalysisapp/app/domain/core/DomainModel.dart';
import 'package:twittertweetanalysisapp/app/domain/repository/local/LocalRepository.dart';

class LocalRepositoryImpl extends LocalRepository {

  @override
  bool delete(String cacheKey) {
    return true;
  }

  @override
  DomainModel get(String cacheKey, {id = String}) {
    return null;
  }

  @override
  bool put(String cacheKey, DomainModel model, bool override, {cacheLimitDate = DateTime}) {
    return true;
  }

}