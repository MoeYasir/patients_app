import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final Color? color;
  final void Function() onTap;

  const CustomButton({
    Key? key,
    required this.width,
    required this.height,
    required this.child,
    required this.color,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
        child: child,
      ),
      onTap: onTap,
    );
  }
}
