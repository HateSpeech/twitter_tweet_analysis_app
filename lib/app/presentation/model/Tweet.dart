import 'package:twittertweetanalysisapp/app/domain/model/TweetDomainModel.dart';
import 'package:twittertweetanalysisapp/app/presentation/core/PresentationModel.dart';

class Tweet extends PresentationModel<TweetDomainModel> {

  String id;
  String msg;
  DateTime date;

  Tweet(TweetDomainModel domainModel) {
    this.id = domainModel.id;
    this.msg = domainModel.msg;
    this.date = domainModel.date;
  }

  @override
  TweetDomainModel asDomainModel() {
    return TweetDomainModel(id, msg, date);
  }

}