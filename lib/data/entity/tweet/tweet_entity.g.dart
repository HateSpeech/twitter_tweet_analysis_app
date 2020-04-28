// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetEntity _$TweetEntityFromJson(Map<String, dynamic> json) {
  return TweetEntity(
    tweetId: json['tweetId'] as String,
    tweetTwitterId: json['tweetTwitterId'] as String,
    content: json['content'] as String,
  );
}

Map<String, dynamic> _$TweetEntityToJson(TweetEntity instance) =>
    <String, dynamic>{
      'tweetId': instance.tweetId,
      'tweetTwitterId': instance.tweetTwitterId,
      'content': instance.content,
    };
