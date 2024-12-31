import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modules_of_ostad/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:modules_of_ostad/features/common/ui/widgets/category_item_widget.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  static const name = '/category-list-screen';

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) => _onPop(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Category'),
          leading: IconButton(
            onPressed: _onPop,
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
        body: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 16,
            crossAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            return const FittedBox(
              child: CategoryItemWidget(),
            );
          },
        ),
      ),
    );
  }

  void _onPop() {
    Get.find<MainBottomNavController>().backToHome();
  }
}
