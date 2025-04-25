import 'package:a_shop/features/shop/store-page.dart';
import 'package:a_shop/features/shop/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'account.dart';
import 'menu.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationMenu());
    return Scaffold(
      bottomNavigationBar: Obx(
          ()=> NavigationBar(
            animationDuration: Duration(milliseconds: 800),
            backgroundColor: Colors.white,
            elevation: 10,
            labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states){
              if(states.contains(WidgetState.selected)){
                return TextStyle(color: Colors.lightBlueAccent, fontWeight: FontWeight.bold
                );
              }
              return TextStyle(color: Colors.lightBlue);
            }),
            height: 80,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index){
              controller.selectedIndex.value = index;
              },
            destinations: [
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Home',selectedIcon: Icon(Iconsax.shop, color: Colors.lightBlueAccent,),),
          NavigationDestination(icon: Icon(Iconsax.house), label: 'Store',),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'WishList'),
          NavigationDestination(icon: Icon(Iconsax.personalcard), label: 'Account'),
        ]),
      ),
      body:Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationMenu extends GetxController{
  static NavigationMenu get instance => Get.find();

  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Menu(),
    StorePage(),
    Wishlist(),
    Account()
  ];
  }

