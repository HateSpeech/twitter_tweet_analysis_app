import 'package:json_annotation/json_annotation.dart';
import 'package:twittertweetanalysisapp/data/core/entity.dart';
import 'package:twittertweetanalysisapp/domain/model/tweet_domain.dart';

part 'tweet_entity.g.dart';

@JsonSerializable(nullable: false)
class TweetEntity extends Entity<TweetDomain> {

  final String tweetId;
  final String tweetTwitterId;
  final String content;
  
  TweetEntity({this.tweetId, this.tweetTwitterId, this.content});

  factory TweetEntity.fromJson(Map<String, dynamic> json) => _$TweetEntityFromJson(json);
  Map<String, dynamic> toJson() => _$TweetEntityToJson(this);

  @override
  TweetDomain asDomainModel() {
    return TweetDomain(tweetId, tweetTwitterId, content);
  }

}