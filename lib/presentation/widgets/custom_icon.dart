import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final bool available;

  const CustomIcon({Key? key, required this.available, required this.icon, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: available? Colors.blue[400] : Colors.blue[70],
      size: size,
    );
  }
}