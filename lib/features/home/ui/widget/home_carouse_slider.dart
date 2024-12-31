import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../../app/app_colors.dart';

class HomeCarouselSlider extends StatefulWidget {
  const HomeCarouselSlider({
    super.key,
  });

  @override
  State<HomeCarouselSlider> createState() => _HomeCarouselSliderState();
}

class _HomeCarouselSliderState extends State<HomeCarouselSlider> {
  final ValueNotifier<int> _selectIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 180.0,
              viewportFraction: 0.95,
              onPageChanged: (currentIndex, reason) {
                _selectIndex.value = currentIndex;
              },
              aspectRatio: 16 / 9,
              initialPage: 0),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                      color: AppColors.themeColor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Center(
                    child: Text(
                      'text $i',
                      style:
                          const TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 8),
        ValueListenableBuilder(
          valueListenable: _selectIndex,
          builder: (context, value, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    height: 16,
                    width: 16,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 2,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: value == i
                          ? AppColors.themeColor
                          : Colors.transparent,
                      border: Border.all(color: Colors.grey),
                    ),
                  )
              ],
            );
          },
        ),
      ],
    );
  }
}
