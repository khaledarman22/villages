class TeacherModel {
  final String? name;
  final String? subject;
  final String? educationalLevel;
  final double? rating;
  final String? imageUrl;
  final int? gander;

  TeacherModel({
    this.name,
    this.subject,
    this.educationalLevel,
    this.rating,
    this.imageUrl,
    this.gander = 0,
  });
}
