import '../../../domain/entities/subject.dart';
import '../../../domain/entities/subjects.dart';

abstract class SubjectsRemoteDataSource {
  Future<Subjects> getSubjects();

  Future<Subject> getSubject(int id);
}
