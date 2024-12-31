import 'package:flutter/material.dart';

class AppBarActionBar extends StatelessWidget {
  const AppBarActionBar({
    super.key,
    required this.icons,
    required this.onTap,
  });

  final IconData icons;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        radius: 16,
        child: Icon(
          icons,
          color: Colors.black45,
          size: 18,
        ),
      ),
    );
  }
}
