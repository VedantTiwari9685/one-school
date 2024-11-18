class Student {
  String? id;
  String name;
  String studentClass;
  String section;

  Student({
    this.id,
    required this.name,
    required this.studentClass,
    required this.section,
  });

  // Create a Student object from JSON data
  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      name: json['name'],
      studentClass: json['studentClass'],
      section: json['section'],
    );
  }

  // Convert a Student object to JSON data
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'studentClass': studentClass,
      'section': section,
    };
  }
}
