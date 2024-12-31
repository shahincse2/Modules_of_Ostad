import 'package:flutter/material.dart';
import 'package:modules_of_ostad/features/product/ui/screens/product_list_screen.dart';
import '../../../../app/app_colors.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, ProductListScreen.name, arguments: 'Electronics');
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.themeColor.withOpacity(0.14),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.computer,
              color: AppColors.themeColor,
              size: 40,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            'Electronics',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.themeColor),
          ),
        ],
      ),
    );
  }
}
