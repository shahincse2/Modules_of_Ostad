import 'package:flutter/material.dart';

class ProductSearchBar extends StatelessWidget {
  const ProductSearchBar({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search',
        filled: true,
        fillColor: Colors.grey.shade100,
        border: InputBorder.none,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.black54,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
