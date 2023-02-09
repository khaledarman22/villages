import 'package:villages/model/hospital.dart';

import '../../assets/assets.dart';

class HospitalSpData {
  static List<HospitalModel> sp = [
    HospitalModel(
      name: "اوعية دموية",
      assetsUrl: Assets.bloodCuate,
    ),
    HospitalModel(
      name: "جراحة عامة",
      assetsUrl: Assets.surgeryRafiki,
    ),
    HospitalModel(
      name: "العظام",
      assetsUrl: Assets.bonesDoctor,
    ),
    HospitalModel(
      name: "الباطنة",
      assetsUrl: Assets.doctorCare,
    ),
    HospitalModel(
      name: "النسا و الولادة",
      assetsUrl: Assets.carePr,
    ),
    HospitalModel(
      name: "الاسنان",
      assetsUrl: Assets.tDoctor,
    ),
    HospitalModel(
      name: "العلاج الطبيعي",
      assetsUrl: Assets.orthopedicCuate,
    ),
    HospitalModel(
      name: "الاطفال",
      assetsUrl: Assets.childCare,
    ),
  ];
}
