import 'package:villages/model/hospital_doctor.dart';

class SpcialDoctorData {
  static List<DoctorModelWithAppointment> doctors = [
    DoctorModelWithAppointment(
      name: 'محمد جمال',
      specialization: 'أخصائى باطنة وجهاز هضمى',
      rating: 4.5,
      today: AppointmentModel(
        avilable: true,
        from: DateTime.now(),
        to: DateTime.now(),
      ),
      tomorrow: AppointmentModel(
        avilable: false,
        from: DateTime.now(),
        to: DateTime.now(),
      ),
    ),
    DoctorModelWithAppointment(
      name: "إبراهيم إسماعيل",
      specialization: "أخصائى الباطنة والاطفال",
      rating: 4.5,
      today: AppointmentModel(
        avilable: true,
        from: DateTime.now(),
        to: DateTime(2023, 0, 0, 4, 20),
      ),
      tomorrow: AppointmentModel(
        avilable: true,
        from: DateTime.now(),
        to: DateTime.now(),
      ),
    ),
    DoctorModelWithAppointment(
      name: "محمد فضل",
      specialization: "جلدية",
      rating: 4.5,
      today: AppointmentModel(
        avilable: false,
        from: DateTime.now(),
        to: DateTime(2023, 0, 0, 4, 20),
      ),
      tomorrow: AppointmentModel(
        avilable: true,
        from: DateTime.now(),
        to: DateTime.now(),
      ),
    ),
    DoctorModelWithAppointment(
      name: "إسلام عبد النبى",
      specialization: "جلدية",
      rating: 4.5,
      today: AppointmentModel(
        avilable: false,
        from: DateTime.now(),
        to: DateTime(2023, 0, 0, 4, 20),
      ),
      tomorrow: AppointmentModel(
        avilable: false,
        from: DateTime.now(),
        to: DateTime.now(),
      ),
    ),
  ];
}
