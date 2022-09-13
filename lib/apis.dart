import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:trackmybus/urls.dart';

import 'dart:async';
import 'models/models.dart';
import 'test_model/test_model.dart';
import 'get_all_data/get_all_data.dart';

abstract class ApiCalls {
  Future<List<Models>?> getAllData();
  Future<TestModel?> setValues(TestModel value);
}

class ModelDb extends ApiCalls {
  final dio = Dio();
  final url = Url();

  ModelDb() {
    dio.options = BaseOptions(responseType: ResponseType.plain);
  }

  @override
  Future<List<Models>?> getAllData() async {
    final result = await dio.get(url.testApi1);

    if (result.data != null) {
      final jsonFormat = jsonDecode(result.data);
      final response = GetAllData.fromJson(jsonFormat);
      
      return response.todos;
    } else {
      return [];
    }
  }

  @override
  Future<TestModel?> setValues(TestModel value) async {
    final result =
        await dio.post(url.testApi2 + value.toString(), data: value.toJson());
    return result.data;
  }
}
