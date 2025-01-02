import 'package:flutter/material.dart';
import 'package:modules_of_ostad/app/app_colors.dart';

class SizePickerWidget extends StatefulWidget {
  const SizePickerWidget({super.key, required this.sizes, required this.onColorSelected});

  final List<String> sizes;
  final Function(String) onColorSelected;

  @override
  State<SizePickerWidget> createState() => _SizePickerWidgetState();
}

class _SizePickerWidgetState extends State<SizePickerWidget> {
  String? _selectedSize;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: _getSizeItems(),
      ),
    );
  }

  List<Widget> _getSizeItems() {
    List<Widget> sizeItemWidgetList = [];
    for (String size in widget.sizes) {
      sizeItemWidgetList.add(
        _getSizeDecoration(
            name: size, onTap: () {
              _selectedSize = size;
              widget.onColorSelected(_selectedSize!);
              setState(() {});
        }, isSelected: _selectedSize == size),
      );
    }
    return sizeItemWidgetList;
  }

  Widget _getSizeDecoration(
      {required String name,
      required VoidCallback onTap,
      required bool isSelected}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(),
          color: isSelected ? AppColors.themeColor : Colors.transparent,
        ),
        child: Text(name, style: TextStyle(color: isSelected? Colors.white : null),),
      ),
    );
  }
}
