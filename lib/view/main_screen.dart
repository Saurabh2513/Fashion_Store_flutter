import 'package:ecommerce_app/controllers/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme
        .of(context)
        .brightness == Brightness.dark;
    final NavigationController navigationController = Get.put(
      NavigationController(),
    );
    return GetBuilder(builder: () =>
        Scaffold(
          backgroundColor: Theme.of(context)
        )
    );
  }
}
