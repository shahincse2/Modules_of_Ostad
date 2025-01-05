import 'package:flutter/material.dart';
import 'package:modules_of_ostad/features/common/ui/screens/create_reviews_screen.dart';
import 'package:modules_of_ostad/features/common/ui/widget/card_reviews_item_widget.dart';
import '../../../../app/app_colors.dart';

class ReviewsListScreen extends StatefulWidget {
  const ReviewsListScreen({super.key});

  static const String name = '/product-reviews-screen';

  @override
  State<ReviewsListScreen> createState() => _ReviewsListScreenState();
}

class _ReviewsListScreenState extends State<ReviewsListScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reviews'),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return CardReviewsItemWidget();
              },
              itemCount: 5,
            ),
          ),
          _buildPriceAndAddToCartSection(textTheme),
        ],
      ),
    );
  }

  Widget _buildPriceAndAddToCartSection(TextTheme textTheme) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.themeColor.withOpacity(0.14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Reviews (1000)',
            style: textTheme.titleSmall,
          ),
          SizedBox(
            width: 50,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, CreateReviewsScreen.name);
              },
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  )
              ),
            ),
          ),
          // SizedBox(
          //   width: 120,
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     style: ElevatedButton.styleFrom(),
          //     child: const Text('Checkout'),
          //   ),
          // ),
        ],
      ),
    );
  }
}
