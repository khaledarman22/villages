import 'package:intl/intl.dart';

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

  toFormatted() => DateFormat('h:m a').format(
        to!,
      );
  fromFormatted() => DateFormat('h:m a').format(
        to!,
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
