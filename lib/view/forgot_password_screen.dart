import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              // back Button
              IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back_ios),
                color: isDark ? Colors.white : Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
