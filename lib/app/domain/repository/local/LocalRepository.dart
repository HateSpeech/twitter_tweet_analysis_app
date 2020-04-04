import 'package:twittertweetanalysisapp/app/domain/core/DomainModel.dart';

abstract class LocalRepository {

  DomainModel get(String cacheKey, {id: String});
  bool put(String cacheKey, DomainModel model, bool override, {cacheLimitDate: DateTime});
  bool delete(String cacheKey);

}