// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classification_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassificationEntity _$ClassificationEntityFromJson(Map<String, dynamic> json) {
  return ClassificationEntity(
    id: json['id'] as int,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$ClassificationEntityToJson(
        ClassificationEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
    };
