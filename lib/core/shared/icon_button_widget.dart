
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../constants/app_constant_vairable.dart';
import 'common/common.dart';



class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key,
    this.text,
    this.onPressed,
    this.svgPath,
    this.buttonColor,
    this.buttonSideColor,
    this.fontColor,
    this.fontSize,
    this.isOutlined = false,
    this.icon,
    this.expanded = false,
    this.contentPadding,
    this.margin = EdgeInsets.zero,
    this.width,
    this.height,
    this.elevation = 1,
    this.radius = AppConstantVariable.RADIUS,
    this.textDirection,
    this.shadowColor,
    this.isLoading = false,
  }) : assert(!(svgPath != null && icon != null)), super(key: key);

  final Function()? onPressed;
  final String? text;
  final String? svgPath;
  final Color? buttonColor;
  final Color? buttonSideColor;
  final Color? fontColor;
  final Color? shadowColor;
  final bool expanded;
  final bool isLoading;
  final bool isOutlined;
  final double? width;
  final double? height;
  final double? elevation;
  final double? fontSize;
  final double radius;
  final IconData? icon;
  final EdgeInsets? contentPadding;
  final EdgeInsets margin;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    if(isLoading) {
      return Center(child: Common.getSpin());
    }
    final child = Row(
      textDirection: textDirection,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
      children: [
        if(svgPath != null)
          SvgPicture.asset(svgPath!),
        if(icon != null)
          Icon(icon),
        if((svgPath != null || icon != null) && text != null)
          const SizedBox(width: 10,),
        if(text != null)
          Text(text!.tr,style: TextStyle(fontSize: fontSize,height: 1),),
      ],
    );
    return SizedBox(
      height: height??44,
      width: width??Get.width,
      child: Padding(
        padding: margin,
        child: Builder(
            builder: (context) {
              if(isOutlined) {
                return OutlinedButton(
                    onPressed: onPressed,
                    style: OutlinedButton.styleFrom(

                        backgroundColor:buttonColor,
                        // onPrimary: fontColor,
                        side: BorderSide(color: buttonColor ?? Theme.of(context).primaryColor,width: 2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radius)
                        ),
                        padding: contentPadding ?? EdgeInsets.all(15)
                    ),
                    child: child
                );
              }
              return ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                      primary: buttonColor,
                      shadowColor: shadowColor??Colors.black,
                      elevation: elevation,
                      onPrimary: fontColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(radius)
                      ),
                      padding: contentPadding ?? EdgeInsets.all(15)
                  ),
                  child: child
              );
            }
        ),
      ),
    );
  }
}
