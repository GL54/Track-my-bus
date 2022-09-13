import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class Models {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'todo')
  String? todo;
  @JsonKey(name: 'completed')
  bool? completed;
  @JsonKey(name: 'userId')
  int? userId;

  Models({this.id, this.todo, this.completed, this.userId});

  factory Models.fromJson(Map<String, dynamic> json) {
    return _$ModelsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ModelsToJson(this);
}
