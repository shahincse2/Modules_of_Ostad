import 'package:flutter/material.dart';

class CardReviewsItemWidget extends StatelessWidget {
  const CardReviewsItemWidget({
    super.key,
  });

  static const String name = 'card-reviews-item-widget';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      color: Colors.white,
      elevation: 1,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //TODO: profile icon with name
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: const Icon(
                    Icons.person_outline_rounded,
                    color: Colors.black38,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  'Rabbil Hasan',
                  style: textTheme.titleMedium?.copyWith(
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
              child: Column(
                children: [
                  Text(
                    '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.''', style: TextStyle(color: Colors.grey.shade600),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
