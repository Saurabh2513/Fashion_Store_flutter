import 'package:ecommerce_app/controllers/navigation_controller.dart';
import 'package:ecommerce_app/controllers/theme_controller.dart';
import 'package:ecommerce_app/view/HomeScreen.dart';
import 'package:ecommerce_app/view/WishListScreen.dart';
import 'package:ecommerce_app/view/widgets/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'AccountScreen.dart';
import 'ShoppingScreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDark = Theme.of(context).brightness == Brightness.dark;
    final NavigationController navigationController = Get.find<NavigationController>();
    return GetBuilder<ThemeController>(
      builder:
          (themeController) => Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: AnimatedSwitcher(
              duration: Duration(microseconds: 200),
              child: Obx(
                () => IndexedStack(
                  key: ValueKey(navigationController.currentIndex.value),
                  index: navigationController.currentIndex.value,
                  children: [
                    Homescreen(),
                    ShoppingScreen(),
                    WishlistScreen(),
                    AccountScreen()
                  ],
                ),
              ),
            ),
            bottomNavigationBar: CustomBottomNavbar(

            ),
          ),
    );
  }
}
