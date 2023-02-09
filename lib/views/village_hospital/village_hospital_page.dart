import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/assets.dart';
import 'package:villages/assets/colors.dart';
import 'package:villages/shared/data/hospital_sp.dart';
import 'package:villages/views/village_hospital/components/hospital_card.dart';

class VillageHospitalPage extends StatefulWidget {
  const VillageHospitalPage({Key? key}) : super(key: key);

  @override
  State<VillageHospitalPage> createState() => _VillageHospitalPageState();
}

class _VillageHospitalPageState extends State<VillageHospitalPage> {
  late final TextEditingController textEditingController;
  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مستشفي رأس الخليج البلد'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: textEditingController,
              keyboardType: TextInputType.text,
              textAlign: TextAlign.end,
              decoration: const InputDecoration(
                fillColor: InUseColors.appBarColor,
                hintTextDirection: TextDirection.ltr,
                filled: true,
                hintText: 'البحث عن التخصص',
                suffixIcon: Icon(
                  Icons.search,
                  color: InUseColors.componentsColor,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              'الشائع',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: InUseColors.componentsColor,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Divider(
            color: InUseColors.componentsColor,
            thickness: 1.5,
            indent: 80.w,
            endIndent: 4.w,
          ),
          Row(
            children: const [
              HospitalCard(
                title: 'الاطفال',
                imageAssets: Assets.childCare,
              ),
              HospitalCard(
                title: "الباطنة",
                imageAssets: Assets.doctorCare,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              'التخصصات المتاحة',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: InUseColors.componentsColor,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Divider(
            color: InUseColors.componentsColor,
            thickness: 1.5,
            indent: 65.w,
            endIndent: 4.w,
          ),
          SizedBox(
            height: 110.h,
            child: GridView.builder(
              itemCount: HospitalSpData.sp.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .96,
              ),
              itemBuilder: (_, iTo) => HospitalCard.fromModel(
                HospitalSpData.sp[iTo],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
