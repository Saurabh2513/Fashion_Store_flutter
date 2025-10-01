import 'package:ecommerce_app/view/widgets/category_chips.dart';
import 'package:ecommerce_app/view/widgets/custom_search_bar.dart';
import 'package:ecommerce_app/view/widgets/product_grid.dart';
import 'package:ecommerce_app/view/widgets/sale_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../controllers/theme_controller.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // header Section
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello saggyy!!',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        'Have A Good Day!!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  // notification button
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none),
                  ),
                  // Cart Button
                  IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
                  // Theme button
                  GetBuilder<ThemeController>(
                    builder:
                        (themeController) => IconButton(
                          onPressed: () => themeController.toggleTheme(),
                          icon: Icon(
                            themeController.isDarkMode
                                ? Icons.dark_mode
                                : Icons.light_mode,
                          ),
                        ),
                  ),
                ],
              ),
            ),
            // search bar
            const CustomSearchBar(),
            // Category Chips
            const CategoryChips(),
            // sale Banner
            const SaleBanner(),
            // popular product
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Products',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // product grid
            Expanded(child: ProductGrid()),
          ],
        ),
      ),
    );
  }
}
