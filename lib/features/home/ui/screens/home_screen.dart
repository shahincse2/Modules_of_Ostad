import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:modules_of_ostad/app/assets_path.dart';
import 'package:modules_of_ostad/features/common/ui/controllers/main_bottom_nav_controller.dart';
import '../widget/app_bar_icon_button.dart';
import '../../../common/ui/widgets/category_item_widget.dart';
import '../widget/home_carousel_slider.dart';
import '../widget/home_section_header.dart';
import '../../../common/ui/widgets/product_item_widget.dart';
import '../widget/product_search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String name = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              ProductSearchBar(
                controller: _controller,
              ),
              const SizedBox(
                height: 16,
              ),
              const HomeCarouselSlider(),
              const SizedBox(
                height: 16,
              ),
              HomeSectionHeader(
                title: 'Categories',
                onTap: () {
                  //TODO: You have to update the onTap functions
                  Get.find<MainBottomNavController>().moveToCategory();
                },
              ),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getCategoryList(),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              HomeSectionHeader(
                title: 'Popular',
                onTap: () {
                  //TODO: You have to update the onTap functions
                  print('You have clicked');
                },
              ),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getProductList(),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              HomeSectionHeader(
                title: 'Special',
                onTap: () {
                  //TODO: You have to update the onTap functions
                  print('You have clicked');
                },
              ),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getProductList(),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              HomeSectionHeader(
                title: 'New',
                onTap: () {
                  //TODO: You have to update the onTap functions
                  print('You have clicked');
                },
              ),
              const SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _getProductList(),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _getCategoryList() {
    List<Widget> categoriesItem = [];
    for (int i = 0; i < 10; i++) {
      categoriesItem.add(
        const Padding(
          padding: EdgeInsets.only(right: 8),
          child: CategoryItemWidget(),
        ),
      );
    }
    return categoriesItem;
  }

  List<Widget> _getProductList() {
    List<Widget> productItem = [];
    for (int i = 0; i < 10; i++) {
      productItem.add(
        const Padding(
          padding: EdgeInsets.only(right: 8),
          child: ProductItemWidget(),
        ),
      );
    }
    return productItem;
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.appBarAppLogo),
      actions: [
        AppBarActionBar(
          icons: Icons.person_outline,
          onTap: () {},
        ),
        const SizedBox(
          width: 6,
        ),
        AppBarActionBar(
          icons: Icons.call_outlined,
          onTap: () {},
        ),
        const SizedBox(
          width: 6,
        ),
        AppBarActionBar(
          icons: Icons.notifications_outlined,
          onTap: () {},
        ),
        const SizedBox(
          width: 6,
        ),
      ],
    );
  }
}
