// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllData _$GetAllDataFromJson(Map<String, dynamic> json) => GetAllData(
      todos: (json['todos'] as List<dynamic>?)
              ?.map((e) => Models.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    )
      ..total = json['total'] as int?
      ..skip = json['skip'] as int?
      ..limit = json['limit'] as int?;

Map<String, dynamic> _$GetAllDataToJson(GetAllData instance) =>
    <String, dynamic>{
      'todos': instance.todos,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };
