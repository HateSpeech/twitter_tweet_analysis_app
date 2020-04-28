import 'package:json_annotation/json_annotation.dart';
import 'package:twittertweetanalysisapp/data/core/entity.dart';
import 'package:twittertweetanalysisapp/domain/model/tweet_model.dart';
part 'tweet_entity.g.dart';

@JsonSerializable(nullable: false)
class TweetEntity extends Entity<TweetModel> {

  final String tweetId;
  final String tweetTwitterId;
  final String content;
  
  TweetEntity({this.tweetId, this.tweetTwitterId, this.content});

  factory TweetEntity.fromJson(Map<String, dynamic> json) => _$TweetEntityFromJson(json);
  Map<String, dynamic> toJson() => _$TweetEntityToJson(this);

  @override
  TweetModel asDomainModel() {
    return TweetModel(tweetId, tweetTwitterId, content);
  }

}