import 'package:flutter/material.dart';
import 'package:smartmart/consts/consts.dart';
import 'package:smartmart/consts/image.dart';

Widget bgWidget({required Widget child}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imgBackground),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}
