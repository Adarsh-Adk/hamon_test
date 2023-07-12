import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/entities/custom_exceptions.dart';
import '../../../domain/entities/registrations.dart';
import 'registrations_remote_data_source.dart';

class RegistrationsRemoteDataSourceImpl
    implements RegistrationsRemoteDataSource {
  final http.Client client;

  RegistrationsRemoteDataSourceImpl({required this.client});

  @override
  Future<Registrations> getRegistrations() async {
    Uri uri = Uri.parse(
        "${AppConstants.baseUrl}/registration/${AppConstants.tokenQuery}");
    final response =
        await client.get(uri, headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      var result = Registrations.fromJson(jsonDecode(response.body));

      return result;
    } else {
      throw ServerException;
    }
  }

  @override
  Future<int> setRegistration(int? subjectId, int? studentId) async {
    Uri uri = Uri.parse(
        "${AppConstants.baseUrl}/registration/${AppConstants.tokenQuery}");
    final response = await client.post(uri,
        body: "student=$studentId&subject=$subjectId",
        headers: {'Content-Type': 'application/x-www-form-urlencoded'});
    if (response.statusCode == 200) {
      var result = response.statusCode;

      return result;
    } else if (response.statusCode == 409) {
      var result = response.statusCode;
      return result;
    } else {
      throw ServerException;
    }
  }

  @override
  Future<int> deleteRegistration(int? registrationId) async {
    Uri uri = Uri.parse(
        "${AppConstants.baseUrl}/registration/$registrationId${AppConstants.tokenQuery}");
    final response = await client.delete(uri,
        headers: {'Content-Type': 'application/x-www-form-urlencoded'});
    if (response.statusCode == 200) {
      int result = 200;

      return result;
    } else {
      throw ServerException;
    }
  }
}
