import 'package:json_annotation/json_annotation.dart';
import 'package:twittertweetanalysisapp/data/core/entity.dart';
import 'package:twittertweetanalysisapp/domain/model/classification_domain.dart';

part 'classification_entity.g.dart';

@JsonSerializable(nullable: false)
class ClassificationEntity extends Entity<ClassificationDomain> {

  int id;
  String description;

  ClassificationEntity({this.id, this.description});

  factory ClassificationEntity.fromJson(Map<String, dynamic> json) => _$ClassificationEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ClassificationEntityToJson(this);

  @override
  ClassificationDomain asDomainModel() {
    return ClassificationDomain(id, description);
  }

}