import 'package:flutter/material.dart';
import 'package:modules_of_ostad/app/app_colors.dart';

class ProductQuantityIncDecButton extends StatefulWidget {
  const ProductQuantityIncDecButton({super.key, required this.onChange});

  final Function(int) onChange;

  @override
  State<ProductQuantityIncDecButton> createState() =>
      _ProductQuantityIncDecButtonState();
}

class _ProductQuantityIncDecButtonState
    extends State<ProductQuantityIncDecButton> {
  int _productQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildQuantityButton(
          icon: Icons.remove,
          onTap: () {
            _buildProductDecButton();
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            '$_productQuantity',
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
          ),
        ),
        _buildQuantityButton(
          icon: Icons.add,
          onTap: () {
            _buildProductIncButton();
          },
        ),
      ],
    );
  }

  void _buildProductIncButton() {
    if (_productQuantity < 20) {
      _productQuantity++;
      widget.onChange(_productQuantity);
      setState(() {});
    }
  }

  void _buildProductDecButton() {
    if (_productQuantity > 1) {
      _productQuantity--;
      widget.onChange(_productQuantity);
      setState(() {});
    }
  }

  Widget _buildQuantityButton(
      {required IconData icon, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: AppColors.themeColor,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
