import 'package:captain_egypt/core/constants/app_colors.dart';
import 'package:captain_egypt/core/constants/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    Key? key,
    this.controller,
    this.isEnabled = true,
    this.haveCountryKey = true,
    this.isFilled = false,
    this.hasValidator = true,
    this.isSecured = false,
    this.validateText = "",
    this.onChange,
    this.isLtr = false,
    this.keyboardType,
    this.prefixIcon,
    this.hintText,
    this.titleWidget,
    this.radius = 6,
    this.borderColor = Colors.grey,
    this.contentPadding,
    this.height,
    this.width,
    this.labelText,
    this.textSize,
    this.suffixIcon,
    this.suffix,
    this.margin,
    this.padding,
    this.onTap,
    this.isMultiLine = false,
    this.suffixTap,
    this.focusNode,
    this.onFieldSubmitted,
    this.prefixTap,
  }) : super(key: key);

  final Color borderColor;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final TextEditingController? controller;
  final bool hasValidator;
  final bool haveCountryKey;
  final double? height;
  final double? width;
  final String? hintText;
  final String? labelText;
  final bool isEnabled;
  final bool isFilled;
  final bool isMultiLine;
  final bool isLtr;
  final bool isSecured;
  final TextInputType? keyboardType;
  final ValueChanged<String?>? onChange;
  final ValueChanged<String?>? onFieldSubmitted;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? suffixTap;
  final VoidCallback? prefixTap;
  final VoidCallback? onTap;
  final double radius;
  final Widget? titleWidget;
  final Widget? suffix;
  final String validateText;
  final double? textSize;
  final FocusNode? focusNode;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isObscure = false;

  @override
  void didChangeDependencies() {
    _isObscure = widget.isSecured;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding ?? const EdgeInsets.symmetric(vertical: 8),
      margin: widget.margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.titleWidget != null) widget.titleWidget!,
          if (widget.titleWidget != null) const SizedBox(height: 8),
          SizedBox(
            height: widget.height,
            width: widget.width,
            child: TextFormField(
              cursorColor: AppColors.primary,
              controller: widget.controller,
              onTap: widget.onTap,
              focusNode: widget.focusNode,
              inputFormatters: [
                LengthLimitingTextInputFormatter(
                  widget.validateText.toLowerCase().contains('phone')
                      ? 8
                      : null,
                ),
                if (widget.validateText.toLowerCase().contains('phone') ||
                    widget.keyboardType == TextInputType.number)
                  FilteringTextInputFormatter.digitsOnly
              ],
              textDirection: widget.isLtr ? TextDirection.ltr : null,
              keyboardType: widget.keyboardType,
              maxLines: widget.isMultiLine ? null : 1,
              decoration: InputDecoration(

                hintText: widget.hintText,
                hintStyle: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16
                ),
                labelText: widget.labelText,
                prefixText:
                widget.validateText.toLowerCase().contains('phone') &&
                    widget.haveCountryKey
                    ? '+965 '
                    : null,
                prefixStyle: Theme.of(context).textTheme.labelMedium,
                suffixStyle: Theme.of(context).textTheme.labelMedium,
                fillColor: !widget.isEnabled ? Colors.grey : Colors.white70,
                enabled: widget.isEnabled,
                filled: widget.isFilled,
                suffixIcon: widget.suffix ??
                    (widget.isSecured
                        ? IconButton(
                      icon: Icon(
                        !_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color:
                        !_isObscure ? AppColors.primary : Colors.grey,
                      ),
                      onPressed: () =>
                          setState(() => _isObscure = !_isObscure),
                    )
                        : widget.suffixIcon != null
                        ? IconButton(
                      icon: Icon(widget.suffixIcon,color: Colors.grey[400],size: 20,),
                      onPressed: widget.suffixTap,
                    )
                        : null),
                prefixIcon: widget.prefixIcon != null
                    ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: Icon(
                      widget.prefixIcon,
                      color: Colors.grey,
                    ),
                    onPressed: widget.prefixTap,
                  ),
                )
                    : null,
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(widget.radius)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(widget.radius)),
                  borderSide: BorderSide(color: AppColors.primary),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(widget.radius)),
                  borderSide: BorderSide(color: widget.borderColor),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(widget.radius)),
                  borderSide: BorderSide(color: widget.borderColor),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(widget.radius)),
                  borderSide: const BorderSide(color: Colors.red),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(widget.radius)),
                  borderSide: const BorderSide(color: Colors.red),
                ),
                contentPadding: widget.contentPadding,
              ),
              obscureText: _isObscure,
              onChanged: widget.onChange,
              style: TextStyle(
                fontSize: widget.textSize ?? 18,
                fontWeight: FontWeight.w500,
              ),
              onFieldSubmitted: widget.onFieldSubmitted,
              validator: (value) {
                // if (value!.isEmpty && widget.hasValidator) {
                //   return "Required Field";
                //   // return S.of(context).requiredField;
                // }
                // if (widget.validateText.toLowerCase().contains('phone') &&
                //     !(value.characters.first == "5" ||
                //         value.characters.first == "6" ||
                //         value.characters.first == "4" ||
                //         value.characters.first == "9")) {
                //   return "S.of(context).startMobileNumberValidation";
                // }
                // if (widget.validateText.toLowerCase().contains('phone') &&
                //     (value.length < 8 || value.length > 8)) {
                //   return "S.of(context).mobileNumberLengthValidation";
                // }
                // if ((widget.validateText
                //     .toLowerCase()
                //     .contains('password') /*|| widget.isSecured*/) &&
                //     (value.length < 6 || !value.isPasswordEasy())) {
                //   return "password not valid";
                //   // return S.of(context).passwordValidation;
                // }
                // if (widget.validateText.toLowerCase().contains("name") &&
                //     (!value.isFullNameEn())) {
                //   return "Valid User Name";
                //   // return S.of(context).notValidUserName;
                // }
                // if (value.isNotEmpty &&
                //     widget.validateText.toLowerCase().contains("email") &&
                //     !value.isEmail()) {
                //   return "Valid Not Email";
                //   // return S.of(context).notValidEmail;
                // }
                // return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
