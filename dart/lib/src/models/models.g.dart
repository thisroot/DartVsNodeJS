// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Human _$HumanFromJson(Map<String, dynamic> json) {
  return Human(json['id'] as int, json['name'] as String,
      json['surname'] as String, json['age'] as int, json['gender'] as bool);
}

Map<String, dynamic> _$HumanToJson(Human instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'age': instance.age,
      'gender': instance.gender
    };
