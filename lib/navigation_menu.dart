import 'package:erba_coders/features/social/screens/create/create.dart';
import 'package:erba_coders/features/social/screens/home/home.dart';
import 'package:erba_coders/features/social/screens/profile/profile.dart';
import 'package:erba_coders/features/social/screens/search/search.dart';
import 'package:erba_coders/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            backgroundColor: TColors.black,
            indicatorColor: TColors.lightBlack,
            destinations: [
              NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
              NavigationDestination(
                  icon: Icon(Iconsax.search_normal), label: "Search"),
              NavigationDestination(
                  icon: Icon(Iconsax.add_circle), label: "Create"),
              NavigationDestination(icon: Icon(Iconsax.user), label: "Account"),
            ],
          )),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const SearchScreen(),
    const CreatePage(),
    const ProfileScreen()
  ];
}
