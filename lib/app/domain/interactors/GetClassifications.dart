import 'package:twittertweetanalysisapp/app/domain/core/Interactor.dart';
import 'package:twittertweetanalysisapp/app/domain/core/exceptions/InvalidTweetIdException.dart';
import 'package:twittertweetanalysisapp/app/domain/model/ClassificationDomainModel.dart';
import 'package:twittertweetanalysisapp/app/domain/model/TweetDomainModel.dart';
import 'package:twittertweetanalysisapp/app/domain/repository/local/LocalRepository.dart';
import 'package:twittertweetanalysisapp/app/domain/repository/remote/RemoteRepository.dart';

class GetClassifications implements Interactor<List<ClassificationDomainModel>, ClassificationDomainModel> {

  @override
  LocalRepository localRepository;

  @override
  RemoteRepository remoteRepository;

  GetClassifications(this.localRepository, this.remoteRepository);

  @override
  List<ClassificationDomainModel> execute() {
    var cachedObjectList = localRepository.getList(ClassificationDomainModel.cacheKey);
    if (cachedObjectList != null) {
      return cachedObjectList;
    }

    var remoteObjectList = remoteRepository.getClassifications();
    localRepository.putList(TweetDomainModel.cacheKey, remoteObjectList, true);

    return remoteObjectList;
  }

}