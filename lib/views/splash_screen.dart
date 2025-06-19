import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/consts.dart';
import '../../consts/image.dart';
import '../../views/auth_screen/login_screen.dart';
import '../../widgets_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key}); // ✅ fixed `const`

  @override
  State<SplashScreen> createState() =>
      _SplashScreenState(); // ✅ fixed `State<>` and name
}

class _SplashScreenState extends State<SplashScreen> {
  // Method to change screen after delay
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const LoginScreen()); // ✅ Use Get.off() for better UX
    });
  }

  @override
  void initState() {
    super.initState(); // ✅ call super first
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor, // ✅ fixed spelling
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child:
                  Image.asset(icSplashBg, width: 300), // ✅ fixed `Image.asset`
            ),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            const Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox,
          ],
        ),
      ),
    );
  }
}
