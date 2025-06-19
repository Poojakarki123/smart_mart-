import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:smartmart/consts/consts.dart';

Widget customTextField(
    {String? title, String? hint, TextEditingController? controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(blueColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: blueColor),
          ),
        ),
      ),
      5.heightBox,
    ],
  );
}
