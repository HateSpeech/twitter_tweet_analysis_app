import 'package:twittertweetanalysisapp/domain/core/domain_model.dart';

abstract class LocalRepository {

  Future<DomainModel> getObject(String cacheKey, {id: String});
  Future<List<DomainModel>> getList(String cacheKey, {id: String});
  bool putObject(String cacheKey, DomainModel model, bool override, {cacheLimitDate: DateTime});
  bool putList(String cacheKey, List<DomainModel> modelList, bool override, {cacheLimitDate: DateTime});
  bool delete(String cacheKey);

}