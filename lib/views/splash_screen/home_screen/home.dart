import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controller/home_controller.dart';
import 'package:emart_app/views/splash_screen/cart_screen/cart_screen.dart';
import 'package:emart_app/views/splash_screen/category_screen/category_screen.dart';
import 'package:emart_app/views/splash_screen/home_screen/home_screen.dart';
import 'package:emart_app/views/splash_screen/profile_screen/profile_screen.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: account)
    ];

    var navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen()
    ];

    return Scaffold(
        body: Column(children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value)))
        ]),
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
        ));
  }
}
