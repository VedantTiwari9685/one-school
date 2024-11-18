import 'dart:convert';

import 'package:oneschool/lib/models/student_attendence_model.dart';

class ClassAttendence {
  String? id;
  String className;
  DateTime date;
  DateTime startTime;
  DateTime endTime;
  Map<Student, bool> studentAttendance;

  ClassAttendence({
    this.id,
    required this.className,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.studentAttendance,
  });

  // Create a ClassAttendence object from JSON data
  factory ClassAttendence.fromJson(Map<String, dynamic> json) {
    return ClassAttendence(
      id: json['id'],
      className: json['className'],
      date: DateTime.parse(json['date']),
      startTime: DateTime.parse(json['startTime']),
      endTime: DateTime.parse(json['endTime']),
      studentAttendance:
          (json['studentAttendance'] as Map<String, dynamic>).map(
        (studentId, isPresent) {
          Student student = Student.fromJson(jsonDecode(studentId));
          return MapEntry(student, isPresent);
        },
      ),
    );
  }

  // Convert a ClassAttendence object to JSON data
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'className': className,
      'date': date.toIso8601String(),
      'startTime': startTime.toIso8601String(),
      'endTime': endTime.toIso8601String(),
      'studentAttendance': studentAttendance.map(
        (student, isPresent) {
          return MapEntry(jsonEncode(student.toJson()), isPresent);
        },
      ),
    };
  }
}
