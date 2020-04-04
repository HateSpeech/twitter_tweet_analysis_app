import 'package:twittertweetanalysisapp/app/domain/core/DomainModel.dart';

abstract class LocalRepository {

  DomainModel getObject(String cacheKey, {id: String});
  List<DomainModel> getList(String cacheKey, {id: String});
  bool putObject(String cacheKey, DomainModel model, bool override, {cacheLimitDate: DateTime});
  bool putList(String cacheKey, List<DomainModel> modelList, bool override, {cacheLimitDate: DateTime});
  bool delete(String cacheKey);

}