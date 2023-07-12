import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/entities/custom_exceptions.dart';
import '../../../domain/entities/class_rooms.dart';
import '../../../domain/entities/classroom.dart';
import 'class_room_remote_data_source.dart';

class ClassRoomRemoteDataSourceImpl implements ClassRoomRemoteDataSource {
  final http.Client client;

  ClassRoomRemoteDataSourceImpl({required this.client});

  @override
  Future<ClassRooms> getClassRooms() async {
    log("get classrooms called");
    Uri uri = Uri.parse(
        "${AppConstants.baseUrl}/classrooms/${AppConstants.tokenQuery}");
    final response =
        await client.get(uri, headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      var result = ClassRooms.fromJson(jsonDecode(response.body));
      return result;
    } else {
      throw ServerException;
    }
  }

  @override
  Future<ClassRoom> getClassRoom(int? id) async {
    log("get classroom called");
    Uri uri = Uri.parse(
        "${AppConstants.baseUrl}/classrooms/$id${AppConstants.tokenQuery}");
    final response =
        await client.get(uri, headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      var result = ClassRoom.fromJson(jsonDecode(response.body));
      log(result.toString());
      return result;
    } else {
      log(response.statusCode.toString());
      throw ServerException;
    }
  }

  @override
  Future<ClassRoom> setSubject(int? subjectId, int? classRoomId) async {
    log("set subject called");
    Uri uri = Uri.parse(
        "${AppConstants.baseUrl}/classrooms/$classRoomId${AppConstants.tokenQuery}");
    final response = await client.patch(
      uri,
      body: "subject=$subjectId",
      headers: {"Content-Type": "application/x-www-form-urlencoded"},
    );
    if (response.statusCode == 200) {
      var result = ClassRoom.fromJson(jsonDecode(response.body));
      log(result.toString());
      return result;
    } else {
      log(response.statusCode.toString());
      throw ServerException;
    }
  }
}
