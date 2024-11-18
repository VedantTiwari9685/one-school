import 'package:oneschool/lib/models/student_attendence_model.dart';

class Subject {
  String? id;
  String name;
  String description;
  List<Student> students;

  Subject({
    this.id,
    required this.name,
    required this.description,
    required this.students,
  });

  // Create a Subject object from JSON data
  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      students: (json['students'] as List)
          .map((student) => Student.fromJson(student))
          .toList(),
    );
  }

  // Convert a Subject object to JSON data
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'students': students.map((student) => student.toJson()).toList(),
    };
  }
}
