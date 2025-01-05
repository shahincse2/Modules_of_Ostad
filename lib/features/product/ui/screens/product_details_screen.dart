import 'package:flutter/material.dart';
import 'package:modules_of_ostad/app/app_colors.dart';
import 'package:modules_of_ostad/features/common/ui/screens/reviews_list_screen.dart';
import 'package:modules_of_ostad/features/product/ui/widgets/color_picker_widget.dart';
import 'package:modules_of_ostad/features/product/ui/widgets/product_image_carousel_slider.dart';
import 'package:modules_of_ostad/features/common/ui/widgets/product_quantity_inc_dec_button.dart';
import 'package:modules_of_ostad/features/product/ui/widgets/size_picker_widget.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.productId});

  static const String name = '/product/product-details';
  final int productId;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Column(
        children: [
          const ProductImageCarouselSlider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Happy New Year Special Deal Save 30%',
                                style: textTheme.titleMedium,
                              ),
                              Row(
                                children: [
                                  const Wrap(
                                    children: [
                                      Icon(
                                        Icons.star_border_outlined,
                                        size: 18,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.themeColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, ReviewsListScreen.name);
                                    },
                                    child: const Text('Reviews'),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: AppColors.themeColor,
                                    ),
                                    child: const Icon(
                                      Icons.favorite_border_outlined,
                                      size: 14,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        ProductQuantityIncDecButton(
                          onChange: (int value) {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Color',
                      style: textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    ColorPickerWidget(
                      colors: const [
                        Color(0xff212121),
                        Color(0xff0E98B1),
                        Color(0xff7A5548),
                        Color(0xffD9D9D9),
                        Color(0xff757575),
                      ],
                      onColorSelected: (Color selectedColor) {},
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Size',
                      style: textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    SizePickerWidget(
                      sizes: const ['S', 'M', 'L', 'XL', 'XXL'],
                      onColorSelected: (String selectedColor) {},
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Description',
                      style: textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ''',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ),
          _buildPriceAndAddToCartSection(textTheme),
        ],
      ),
    );
  }

  Widget _buildPriceAndAddToCartSection(TextTheme textTheme) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.themeColor.withOpacity(0.14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Price',
                style: textTheme.titleSmall,
              ),
              Text('\$1000',
                  style: textTheme.titleMedium
                      ?.copyWith(color: AppColors.themeColor)),
            ],
          ),
          SizedBox(
            width: 120,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: const Text('Add To Cart'),
            ),
          ),
        ],
      ),
    );
  }
}
