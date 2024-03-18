class Student {
  final String? id;
  final ContactInfo contactInfo;
  final List<String> registeredCourses;
  final num averageScore;
  final num? dateOfBirth;
  final String classField;
  final String fullName;

  Student({
    this.id,
    required this.contactInfo,
    required this.registeredCourses,
    required this.averageScore,
    required this.dateOfBirth,
    required this.classField,
    required this.fullName,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['_id'],
      contactInfo: ContactInfo.fromJson(json['contactInfo']),
      registeredCourses: List<String>.from(json['registeredCourses']),
      averageScore: json['averageScore'],
      dateOfBirth: json['dateOfBirth'],
      classField: json['class'],
      fullName: json['fullName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      // '_id': id,
      'contactInfo': contactInfo.toJson(),
      'registeredCourses': registeredCourses,
      'averageScore': averageScore,
      'dateOfBirth': dateOfBirth,
      'class': classField,
      'fullName': fullName,
    };
  }

}

class ContactInfo {
  final String address;
  final String email;
  final String phoneNumber;
  final String? id;

  ContactInfo({
    required this.address,
    required this.email,
    required this.phoneNumber,
    this.id,
  });

  factory ContactInfo.fromJson(Map<String, dynamic> json) {
    return ContactInfo(
      address: json['address'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      id: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'email': email,
      'phoneNumber': phoneNumber,
      // '_id': id,
    };
  }
}
