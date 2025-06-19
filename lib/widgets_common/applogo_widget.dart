import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../consts/consts.dart';
import '../consts/image.dart';

Widget applogoWidget() {
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(const EdgeInsets.all(8)) // ✅ Added `const`
      .rounded
      .make();
}
