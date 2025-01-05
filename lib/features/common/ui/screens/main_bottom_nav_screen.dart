import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modules_of_ostad/features/cart/ui/screens/cart_list_screen.dart';
import 'package:modules_of_ostad/features/category/ui/screen/category_list_screen.dart';
import 'package:modules_of_ostad/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:modules_of_ostad/features/home/ui/screens/home_screen.dart';
import 'package:modules_of_ostad/features/wishlist/ui/screens/wishlist_screen.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  static const String name = '/bottom-nav-screen';

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {

  final List<Widget> _screens = const[
    HomeScreen(),
    CategoryListScreen(),
    CartListScreen(),
    WishlistScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(
        builder: (bottomNavController) {
          return Scaffold(
            body: _screens[bottomNavController.selectedIndex],
            bottomNavigationBar: NavigationBar(
              selectedIndex: bottomNavController.selectedIndex,
              onDestinationSelected: bottomNavController.changeIndex,
              destinations: [
                NavigationDestination(
                    icon: Icon(Icons.home_outlined), label: 'Home'),
                NavigationDestination(
                    icon: Icon(Icons.category_outlined), label: 'Categories'),
                NavigationDestination(
                    icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
                NavigationDestination(
                    icon: Icon(Icons.favorite_border_outlined),
                    label: 'Wishlist'),
              ],
            ),
          );
        }
    );
  }
}
