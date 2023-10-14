import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerticalSizedBox extends StatelessWidget {
  final double height;
  final Color? color;

  const VerticalSizedBox(this.height, {this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      child: ColoredBox(
        color: color ?? Colors.transparent,
      ),
    );
  }
}
