import '../../../domain/entities/student.dart';
import '../../../domain/entities/students.dart';

abstract class StudentsRemoteDataSource {
  Future<Students> getStudents();
  Future<Student> getStudent(int id);
}
