import 'package:flutter/material.dart';
import 'package:kind_owl/common/ui/root_screen_builder.dart';

class SelectColorWidget extends StatefulWidget {
  const SelectColorWidget({super.key});

  @override
  State<SelectColorWidget> createState() => _SelectColorWidgetState();
}

class _SelectColorWidgetState extends State<SelectColorWidget> {
  Color? _selectedColor;
  late List<Color> appColors;
  int? selectedNumber;

  @override
  void initState() {
    appColors = [
      for (var r = 0; r <= 255; r += 51)
        for (var g = 0; g <= 255; g += 51)
          for (var b = 0; b <= 255; b += 51) Color.fromRGBO(r, g, b, 1)
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      for (var i in appColors)
        IconButton(
            onPressed: () {
              RootScreenBuilder.of(context)?.setUpColor(i);
              setState(() => selectedNumber = appColors.indexOf(i));
            },
            icon: Icon(
              selectedNumber == appColors.indexOf(i)
                  ? Icons.check_box_rounded
                  : Icons.square_rounded,
              color: i,
            ))
    ]);
  }
}
