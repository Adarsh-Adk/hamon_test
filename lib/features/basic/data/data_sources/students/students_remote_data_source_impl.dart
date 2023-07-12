import 'dart:convert';

import 'package:hamon_test/core/constants/app_constants.dart';
import 'package:http/http.dart' as http;

import '../../../../../core/entities/custom_exceptions.dart';
import '../../../domain/entities/student.dart';
import '../../../domain/entities/students.dart';
import 'students_remote_data_source.dart';

class StudentsRemoteDataSourceImpl implements StudentsRemoteDataSource {
  final http.Client client;

  StudentsRemoteDataSourceImpl({required this.client});

  @override
  Future<Students> getStudents() async {
    Uri uri = Uri.parse(
        "${AppConstants.baseUrl}/students/${AppConstants.tokenQuery}");
    final response =
        await client.get(uri, headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      var result = Students.fromJson(jsonDecode(response.body));

      return result;
    } else {
      throw ServerException;
    }
  }

  @override
  Future<Student> getStudent(int? id) async {
    Uri uri = Uri.parse(
        "${AppConstants.baseUrl}/students/$id${AppConstants.tokenQuery}");
    final response =
        await client.get(uri, headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      var result = Student.fromJson(json.decode(response.body));

      return result;
    } else {
      throw ServerException;
    }
  }
}
