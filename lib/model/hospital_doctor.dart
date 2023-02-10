import 'package:date_time_format/date_time_format.dart';

class HospitalDoctorModel {
  final String? name;
  final String? specialization;
  final double? rating;
  final String? imageURL;

  HospitalDoctorModel({
    this.name,
    this.specialization,
    this.rating,
    this.imageURL,
  });
}

class AppointmentModel {
  final DateTime? from;
  final DateTime? to;
  final bool? avilable;

  toFormatted() => DateTimeFormat.format(
        to!,
        format: 'h:i a',
      );
  fromFormatted() => DateTimeFormat.format(
        to!,
        format: 'h:i a',
      );

  AppointmentModel({
    this.from,
    this.to,
    this.avilable,
  });
}

class DoctorModelWithAppointment extends HospitalDoctorModel {
  final AppointmentModel? today;
  final AppointmentModel? tomorrow;

  DoctorModelWithAppointment({
    this.today,
    this.tomorrow,
    super.name,
    super.specialization,
    super.rating,
    super.imageURL,
  });
}
