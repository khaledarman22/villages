import 'package:villages/model/supermarket.dart';

class SupermarketsData {
  SupermarketsData._();
  static final _i = SupermarketsData._();
  static final i = _i;

  List<SupermarketModel> supermarkets = [
    SupermarketModel(
      name: "ماركت ابو حسن",
      rate: 5,
    ),
    SupermarketModel(
      name: "ماركت ابو حسن",
      rate: 5,
    ),
    SupermarketModel(
      name: "ماركت ابوعمرو",
      rate: 5,
    ),
    SupermarketModel(
      name: "ماركت مراد",
      rate: 5,
    ),
    SupermarketModel(
      name: "ماركت الاصدقاء",
      rate: 5,
    ),
    SupermarketModel(
      name: "بقالة رمضان",
      rate: 5,
    ),
    SupermarketModel(
      name: "ابناء عزمي نعمان",
      rate: 5,
    ),
    SupermarketModel(
      name: "ماركت قطر الندي",
      rate: 5,
    ),
    SupermarketModel(
      name: "ماركت الفلاح",
      rate: 5,
    ),
  ];
}
