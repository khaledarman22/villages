import 'package:flutter/material.dart';

ClipRRect textFieldOTP({
  required BuildContext context,
  required bool last,
  required bool first,
  TextEditingController? controller,
}) {
  return ClipRRect(
    borderRadius: const BorderRadius.all(Radius.circular(6)),
    child: SizedBox(
      width: 50,
      height: 55,
      child: TextField(
        controller: controller,
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        showCursor: false,
        readOnly: false,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        // style: context.textTheme.titleLarge!.copyWith(height: 1),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: const InputDecoration(
          counter: Offstage(
            offstage: true,
          ),
        ),
      ),
    ),
  );
}
