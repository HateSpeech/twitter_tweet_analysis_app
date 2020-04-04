import 'package:twittertweetanalysisapp/app/domain/core/DomainModel.dart';

class TweetDomainModel extends DomainModel {
  String id;
  String msg;
  DateTime date;

  TweetDomainModel(String id, String msg, DateTime date, {String user}) {
    this.id = id;
    this.msg = msg;
    this.date = date;
  }

}