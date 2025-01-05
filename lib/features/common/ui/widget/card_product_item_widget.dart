import 'package:flutter/material.dart';
import '../../../../app/app_colors.dart';
import '../../../../app/assets_path.dart';
import '../widgets/product_quantity_inc_dec_button.dart';

class CardProductItemWidget extends StatelessWidget {
  const CardProductItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              AssetsPath.shoes,
              width: 90,
              height: 90,
              fit: BoxFit.scaleDown,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              'New Year Special Shoe',
                              maxLines: 1,
                              style: textTheme.bodyLarge?.copyWith(overflow: TextOverflow.ellipsis),
                            ),
                            Row(
                              children: [
                                Text('Color: Red'),
                                const SizedBox(width: 4),
                                Text('Size: X'),
                              ],
                            )
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_outlined),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$1000',
                        style: textTheme.titleMedium?.copyWith(
                            color: AppColors.themeColor),
                      ),
                      ProductQuantityIncDecButton(
                          onChange: (int value) {})
                    ],
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
