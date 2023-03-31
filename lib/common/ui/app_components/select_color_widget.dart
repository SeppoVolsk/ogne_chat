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

  @override
  void initState() {
    //_selectedColor = Theme.of(context).primaryColor;
    appColors = [
      for (var r = 0; r <= 255; r += 55)
        for (var g = 0; g <= 255; g += 55)
          for (var b = 0; b <= 255; b += 55) Color.fromRGBO(r, g, b, 1)
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
            },
            icon: Icon(
              Icons.square_rounded,
              color: i,
            ))
      //Text('_', style: TextStyle(backgroundColor: i))
    ]);
  }
}
