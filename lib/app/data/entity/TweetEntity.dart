import 'package:twittertweetanalysisapp/app/data/core/Entity.dart';
import 'package:twittertweetanalysisapp/app/domain/model/TweetDomainModel.dart';

class TweetEntity extends Entity<TweetDomainModel> {
  String id;
  String msg;
  DateTime date;

  TweetEntity(TweetDomainModel domainModel) {
    this.id = domainModel.id;
    this.msg = domainModel.msg;
    this.date = domainModel.date;
  }

  @override
  TweetDomainModel asDomainModel() {
    throw UnimplementedError();
  }

}