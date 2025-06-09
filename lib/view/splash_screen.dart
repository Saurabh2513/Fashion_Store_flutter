import 'package:ecommerce_app/controllers/auth_controller.dart';
import 'package:ecommerce_app/view/main_screen.dart';
import 'package:ecommerce_app/view/onboarding_screen.dart';
import 'package:ecommerce_app/view/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    // Navigate base on auth state after 3 seconds
    Future.delayed(const Duration(milliseconds: 3000), () {
      if (authController.isFirstTime) {
        Get.off(() => const OnboardingScreen());
      } else if (authController.isLoggedIn) {
        Get.off(() => const MainScreen());
      } else {
        Get.off(() =>  SigninScreen());
        }
        });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme
                  .of(context)
                  .primaryColor,
              Theme
                  .of(context)
                  .primaryColor
                  .withOpacity(0.8),
              Theme
                  .of(context)
                  .primaryColor
                  .withOpacity(0.8),
            ],
          ),
        ),
        child: Stack(
          children: [
            // background pattern
            const Positioned.fill(
              child: Opacity(
                opacity: 0.05,
                child: GridPattern(color: Colors.white),
              ),
            ),

            // main content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Animate Logo Container
                  TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: const Duration(milliseconds: 1500),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scale: value,
                        child: Container(
                          padding: EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 20,
                                spreadRadius: 2,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            size: 60,
                            color: Theme
                                .of(context)
                                .primaryColor,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 28),

                  // Animate Text
                  TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: const Duration(milliseconds: 1500),
                    builder: (context, value, child) {
                      return Opacity(
                        opacity: value,
                        child: Transform.translate(
                          offset: Offset(0, 25 * (1 - value)),
                          child: child,
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Text(
                          "FASHION",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2,
                          ),
                        ),
                        Text(
                          "STORE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Button Tagline
                  Positioned(
                    bottom: 48,
                    left: 0,
                    right: 0,
                    child: TweenAnimationBuilder<double>(
                      tween: Tween(begin: 0.0, end: 1.0),
                      duration: const Duration(milliseconds: 1500),
                      builder: (context, value, child) {
                        return Opacity(opacity: value, child: child);
                      },
                      child: Text(
                        "Style Is Everything",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 14,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridPattern extends StatelessWidget {
  final Color color;

  const GridPattern({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: GridPainter(color: color));
  }
}

// background line
class GridPainter extends CustomPainter {
  final Color color;

  GridPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
    Paint()
      ..color = color
      ..strokeWidth = 0.5;

    final spacing = 20.0;

    for (var i = 0.0; i < size.width; i += spacing) {
      canvas.drawLine(Offset(i, 0), Offset(i, size.height), paint);
    }
    for (var i = 0.0; i < size.height; i += spacing) {
      canvas.drawLine(Offset(0, i), Offset(size.width, i), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
