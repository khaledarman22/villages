import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/assets.dart';
import 'package:villages/assets/colors.dart';

class MakeAppointmentPage extends StatelessWidget {
  MakeAppointmentPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(
              45,
            ),
            child: Image.asset(
              Assets.welcoming,
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(
                    15,
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'برجاء عدم ترك الحقل فارغ';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        hintText: 'الاسم',
                        prefixIcon: const Icon(
                          Icons.person,
                          color: InUseColors.componentsColor,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        fillColor: InUseColors.appBarColor,
                        filled: true,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(
                    15,
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'برجاء عدم ترك الحقل فارغ';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        hintText: 'رقم التليفون',
                        prefixIcon: const Icon(
                          Icons.phone,
                          color: InUseColors.componentsColor,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        fillColor: InUseColors.appBarColor,
                        filled: true,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(
                    15,
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'برجاء عدم ترك الحقل فارغ';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        hintText: "العنوان",
                        prefixIcon: const Icon(
                          Icons.location_on_outlined,
                          color: InUseColors.componentsColor,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        fillColor: InUseColors.appBarColor,
                        filled: true,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            duration: const Duration(
                              milliseconds: 9500,
                            ),
                            behavior: SnackBarBehavior.floating,
                            dismissDirection: DismissDirection.up,
                            margin: EdgeInsets.only(
                              bottom: 75.h,
                              left: 4.w,
                              right: 4.w,
                            ),
                            backgroundColor:
                                InUseColors.componentsColor.withOpacity(
                              0.76,
                            ),
                            content: Directionality(
                              textDirection: TextDirection.rtl,
                              child: SizedBox(
                                height: 4.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    const Text(
                                      'تم الحفظ بنجاح',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                      },
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(
                        double.infinity,
                        50,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          25,
                        ),
                      ),
                      backgroundColor: InUseColors.submitIconColor,
                    ),
                    child: const Text(
                      'حفظ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
