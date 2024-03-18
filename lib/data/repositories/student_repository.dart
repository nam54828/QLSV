import 'dart:convert';

import 'package:template/data/data_source/dio/dio_client.dart';
import 'package:template/data/model/student/student_model.dart';

import '../../core/di_container.dart';
import '../../domain/end_points/end_point.dart';
import '../data_source/exception/api_error_handler.dart';
import '../model/base/api_response.dart';

class StudentRepository{
  final _dio = sl.get<DioClient>();

  ///
  /// METHOD GET
  ///
  Future<void> getStudent(
      {required Function(List<Student> settings) onSuccess,
        required Function(dynamic error) onError}) async {
    try {
      final response = await _dio.get(EndPoint.STUDENT);

      final results = response.data as List<dynamic>;
      onSuccess(results
          .map((e) => Student.fromJson(e as Map<String, dynamic>))
          .toList());
    } catch (e) {
      onError(ApiResponse.withError(ApiErrorHandler.getMessage(e)).error);
    }
  }

///
  /// METHOD POST
  ///
  Future<void> addStudent({
    required Student student,
    required Function() onSuccess,
    required Function(dynamic error) onError,
  }) async {
    try {
      await _dio.post(
        EndPoint.STUDENT,
        data: student.toJson(),
      );
      onSuccess();
    } catch (e) {
      onError(ApiResponse.withError(ApiErrorHandler.getMessage(e)).error);
    }
  }


  Future<void> updateStudent(
      {required Student student,
        required String idStudent,
        required Function() onSuccess,
        required Function(dynamic error) onError}) async {
    try {
      await _dio.put(
        '${EndPoint.STUDENT}/$idStudent',
        data: student.toJson(),
      );
      onSuccess();
    } catch (e) {
      onError(ApiResponse.withError(ApiErrorHandler.getMessage(e)).error);
    }
  }

  Future<void> deleteStudent(
      {required String idStudent,
        required Function() onSuccess,
        required Function(dynamic error) onError}) async {
    try {
      await _dio.delete(
        '${EndPoint.STUDENT}/$idStudent',
      );
      onSuccess();
    } catch (e) {
      onError(ApiResponse.withError(ApiErrorHandler.getMessage(e)).error);
    }
  }
}