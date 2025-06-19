import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:smartmart/consts/consts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    // init home controller
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBar(icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBar(icon: Image.asset(icCategories, width: 26), label: categories),
      BottomNavigationBar(icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBar(icon: Image.asset(icProfile, width: 26), label: account),

    ];

    var navBody = [
    Container(color: Colors.blue),
    Container(color: Colors.amber),
    Container(color: Colors.purple),
    Container(color: Colors.cyan),


    ]



    return Scaffold(
      body: Column(
        children:[
          Obx(()=> Expanded(child:
        navbody.elementAt(controller.currentNavIndex.value)),
        ))
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navbarItem,
        onTap: (value) {
          controller.currentNavIndex.value = value;
        },

          ),
)
      ),
    }
  }
}
