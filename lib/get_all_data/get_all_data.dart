import 'package:json_annotation/json_annotation.dart';

import '../models/models.dart';

part 'get_all_data.g.dart';

@JsonSerializable()
class GetAllData {
  @JsonKey(name: 'todos')
  List<Models>? todos;
  int? total;
  int? skip;
  int? limit;

  GetAllData({this.todos = const []});

  factory GetAllData.fromJson(Map<String, dynamic> json) {
    return _$GetAllDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetAllDataToJson(this);
}
