import 'package:flutter/material.dart';
import 'package:modules_of_ostad/app/app_colors.dart';
//
// class ColorPickerWidget extends StatefulWidget {
//   const ColorPickerWidget({super.key, required this.colors, required this.onColorSelected});
//
//   final List<String> colors;
//   final Function(String) onColorSelected;
//
//   @override
//   State<ColorPickerWidget> createState() => _ColorPickerWidgetState();
// }
//
// class _ColorPickerWidgetState extends State<ColorPickerWidget> {
//   String? _selectedColor;
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Row(
//         children: _getColorItems(),
//       ),
//     );
//   }
//
//   List<Widget> _getColorItems() {
//     List<Widget> colorItemWidgetList = [];
//     for (String color in widget.colors) {
//       colorItemWidgetList.add(
//         _getColorDecoration(
//             name: color,
//             onTap: () {
//               _selectedColor = color;
//               widget.onColorSelected(_selectedColor!);
//               setState(() {});
//         }, isSelected: _selectedColor == color),
//       );
//     }
//     return colorItemWidgetList;
//   }
//
//   Widget _getColorDecoration(
//       {required String name,
//       required VoidCallback onTap,
//       required bool isSelected}) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         alignment: Alignment.center,
//         padding: const EdgeInsets.all(8),
//         margin: const EdgeInsets.symmetric(horizontal: 8),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(50),
//           border: Border.all(),
//           color: isSelected ? AppColors.themeColor : Colors.transparent,
//         ),
//         child: Text(name, style: TextStyle(color: isSelected? Colors.white : null),),
//       ),
//     );
//   }
// }




class ColorPickerWidget extends StatefulWidget {
  const ColorPickerWidget({
    super.key,
    required this.colors,
    required this.onColorSelected,
  });

  final List<Color> colors;
  final Function(Color) onColorSelected;

  @override
  State<ColorPickerWidget> createState() => _ColorPickerWidgetState();
}

class _ColorPickerWidgetState extends State<ColorPickerWidget> {
  Color? _selectedColor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _getColorItems(),
      ),
    );
  }

  List<Widget> _getColorItems() {
    return widget.colors.map((color) {
      return _getColorDecoration(
        color: color,
        onTap: () {
          setState(() {
            _selectedColor = color;
          });
          widget.onColorSelected(color);
        },
        isSelected: _selectedColor == color,
      );
    }).toList();
  }

  // Widget _getColorDecoration({
  //   required Color color,
  //   required VoidCallback onTap,
  //   required bool isSelected,
  // }) {
  //   return GestureDetector(
  //     onTap: onTap,
  //     child: Container(
  //       width: 40,
  //       height: 40,
  //       margin: const EdgeInsets.symmetric(horizontal: 8),
  //       decoration: BoxDecoration(
  //         shape: BoxShape.circle,
  //         border: Border.all(
  //           color: isSelected ? Icon(Icons.check_outlined, color: Colors.white,) : Colors.transparent,
  //           width: 2,
  //         ),
  //         color: color,
  //       ),
  //     ),
  //   );
  // }

  Widget _getColorDecoration({
    required Color color,
    required VoidCallback onTap,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? Colors.black : Colors.transparent,
                width: 2,
              ),
              color: color,
            ),
          ),
          if (isSelected)
            const Icon(
              Icons.check_outlined,
              color: Colors.white,
              size: 24,
            ),
        ],
      ),
    );
  }

}
