import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modules_of_ostad/app/app_theme_data.dart';
import 'package:modules_of_ostad/app/controller_binder.dart';
import 'package:modules_of_ostad/features/auth/ui/screens/splash_screen.dart';
import 'package:modules_of_ostad/features/category/ui/screen/category_list_screen.dart';
import 'package:modules_of_ostad/features/common/ui/screens/create_reviews_screen.dart';
import 'package:modules_of_ostad/features/common/ui/screens/main_bottom_nav_screen.dart';
import 'package:modules_of_ostad/features/common/ui/widget/card_reviews_item_widget.dart';
import 'package:modules_of_ostad/features/product/ui/screens/product_details_screen.dart';
import 'package:modules_of_ostad/features/product/ui/screens/product_list_screen.dart';
import '../features/auth/ui/screens/complete_profile.dart';
import '../features/auth/ui/screens/email_verification_screen.dart';
import '../features/auth/ui/screens/otp_verification_screen.dart';
import '../features/common/ui/screens/reviews_list_screen.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: AppThemeData.lightThemeData,
      darkTheme: AppThemeData.darkThemeData,
      themeMode: ThemeMode.light,
      initialBinding: ControllerBinder(),

      onGenerateRoute: (RouteSettings settings) {
        late Widget widget;
        if (settings.name == SplashScreen.name) {
          widget = const SplashScreen();
        } else if (settings.name == EmailVerificationScreen.name) {
          widget = const EmailVerificationScreen();
        } else if (settings.name == OtpVerificationScreen.name) {
          widget = const OtpVerificationScreen();
        } else if (settings.name == CompleteProfile.name) {
          widget = const CompleteProfile();
        } else if (settings.name == MainBottomNavScreen.name) {
          widget = const MainBottomNavScreen();
        } else if (settings.name == CategoryListScreen.name) {
          widget = const CategoryListScreen();
        } else if (settings.name == ProductListScreen.name) {
          String name = settings.arguments as String;
          widget = ProductListScreen(categoryName: name);
        } else if (settings.name == ProductDetailsScreen.name) {
          int productId = settings.arguments as int;
          widget = ProductDetailsScreen(productId: productId);
        } else if (settings.name == ReviewsListScreen.name) {
          widget = ReviewsListScreen();
        } else if (settings.name == CardReviewsItemWidget.name) {
          widget = CardReviewsItemWidget();
        } else if (settings.name == CreateReviewsScreen.name) {
          widget = CreateReviewsScreen();
        }

        return MaterialPageRoute(builder: (ctx) {
          return widget;
        });
      },

      // routes: {
      //   '/': (context) => const SplashScreen(),
      //   EmailVerificationScreen.name: (context) => const EmailVerificationScreen(),
      //   OtpVerificationScreen.name: (context) => const OtpVerificationScreen(),
      //   CompleteProfile.name: (context) => const CompleteProfile(),
      //   MainBottomNavScreen.name: (context) => const MainBottomNavScreen(),
      //   CategoryListScreen.name: (context) => const CategoryListScreen(),
      //   ProductListScreen.name: (context) => const ProductListScreen(),
      // },
    );
  }
}
