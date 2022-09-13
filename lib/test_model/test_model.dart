import 'package:json_annotation/json_annotation.dart';

part 'test_model.g.dart';

@JsonSerializable()
class TestModel {
  @JsonKey(name: 'text')
  String? text;
  @JsonKey(name: 'number')
  int? number;
  bool? found;
  @JsonKey(name: 'type')
  String? type;

  TestModel({this.text, this.number, this.found, this.type});

  TestModel.create({
    required this.text,
    required this.number,
    required this.found,
    required this.type,
  });

  factory TestModel.fromJson(Map<String, dynamic> json) {
    return _$TestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TestModelToJson(this);
}
