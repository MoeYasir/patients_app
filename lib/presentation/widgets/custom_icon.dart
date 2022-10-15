import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String icon;
  final double size;
  final bool available;

  const CustomIcon({Key? key, required this.available, required this.icon, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage(icon),
      color: available? Colors.blue[400] : Colors.red[400],
      size: size,
    );
  }
}