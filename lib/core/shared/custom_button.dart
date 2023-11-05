import 'package:captain_egypt/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.borderRadius,
    this.width,
    this.height = 44.0,
    this.padding,
    this.alignment,
    this.elevation,
    this.color,
    this.margin,
    this.border,
    this.colorGradient,
  }) : super(key: key);

  final BorderRadiusGeometry? borderRadius;
  final Widget child;
  final double height;
  final VoidCallback? onPressed;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final AlignmentGeometry? alignment;
  final double? elevation;
  final Color? color;
  final Gradient? colorGradient;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        gradient: colorGradient,
        color: color,
        borderRadius: borderRadius,
        border: border,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: padding,
          alignment: alignment,
          elevation: elevation,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}

class CustomButtonText extends StatelessWidget {
  const CustomButtonText({
    Key? key,
    required this.title,
    this.onPressed,
    this.color,
    this.width,
    this.textColor,
  }) : super(key: key);
  final String title;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? textColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed,
      borderRadius: const BorderRadius.all(Radius.circular(32)),
      width: width,
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 12,
      color: color ?? AppColors.primary,
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: textColor ?? Colors.white),
      ),
    );
  }
}

class CustomButtonIcon extends StatelessWidget {
  const CustomButtonIcon({
    Key? key,
    required this.icon,
    this.color,
    this.iconColor,
    this.radius,
    this.onPressed,
    this.padding,
    this.elevation,
    this.iconSize,
    this.margin,
  }) : super(key: key);
  final Color? color;
  final IconData icon;
  final Color? iconColor;
  final double? radius;
  final double? elevation;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: elevation,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 0),
        ),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(6),
          child: Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
        ),
      ),
    );
  }
}

class CustomButtonSvgLogoText extends StatelessWidget {
  const CustomButtonSvgLogoText({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.logo,
    this.color,
    this.textColor,
    this.border,
    this.logoColor,
    this.colorBlendMode = BlendMode.srcIn,
  }) : super(key: key);
  final String title;
  final VoidCallback onPressed;
  final String logo;
  final Color? color;
  final Color? textColor;
  final BoxBorder? border;
  final Color? logoColor;
  final BlendMode colorBlendMode;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed,
      borderRadius: const BorderRadius.all(Radius.circular(32)),
      width: double.infinity,
      color: color,
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 12,
      border: border,
      child: Row(
        children: [
          SvgPicture.asset(
            logo,
            colorFilter: logoColor != null
                ? ColorFilter.mode(logoColor!, colorBlendMode)
                : null,
          ),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: textColor),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButtonSvgLogo extends StatelessWidget {
  const CustomButtonSvgLogo({
    Key? key,
    this.color,
    this.radius,
    this.onPressed,
    this.padding,
    this.elevation,
    this.iconSize,
    required this.logo,
    this.logoColor,
    this.colorBlendMode = BlendMode.srcIn,
  }) : super(key: key);
  final Color? color;
  final double? radius;
  final double? elevation;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final String logo;
  final Color? logoColor;
  final BlendMode colorBlendMode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: elevation ?? 0,
        color: color ?? Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 0),
        ),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(6),
          child: SvgPicture.asset(
            logo,
            colorFilter: logoColor != null
                ? ColorFilter.mode(logoColor!, colorBlendMode)
                : null,
          ),
        ),
      ),
    );
  }
}

class CustomTextIconButton extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? iconColor;
  final Color? titleColor;
  final IconData icon;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? elevation;
  final double? height;
  final double? width;
  final double? iconSize;

  const CustomTextIconButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.iconColor,
    this.titleColor,
    this.padding,
    this.margin,
    this.elevation,
    this.height,
    this.width,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      child: TextButton.icon(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: padding,
          elevation: elevation,
          backgroundColor: backgroundColor,
          side: borderColor != null ? BorderSide(color: borderColor!) : null,
        ),
        icon: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
        label: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: titleColor),
        ),
      ),
    );
  }
}
