import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldWidgets extends StatelessWidget {
  final String hintText;
  final double? width;
  final double? height;
  final double? horizantalPadingSize;
  final TextEditingController? controller;
  final Widget? perfixIcon;
  final Color? backGroundColor;
  final Color? borderColor;
  final TextStyle? textStyle;
  final double? borderRadius;
  final double? iconSize;
  const CustomTextFieldWidgets(
      {super.key,
      required this.hintText,
      this.controller,
      this.horizantalPadingSize = 19,
      this.width = double.infinity,
      this.height = 48,
      this.perfixIcon,
      this.backGroundColor,
      this.borderColor,
      this.textStyle,
      this.borderRadius,
      this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ShapeDecoration(
            shape: borderColor != null
                ? RoundedRectangleBorder(
                    side: BorderSide(
                        width: 0.75, color: borderColor ?? Colors.transparent),
                    borderRadius: BorderRadius.circular(7.50),
                  )
                : const RoundedRectangleBorder()),
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: horizantalPadingSize!),
        child: TextField(
          textAlign: TextAlign.start,
          style: textStyle,
          controller: controller,
          decoration: InputDecoration(
            enabledBorder: borderRadius != null
                ? OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(40.0),
                  )
                : const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
            focusedBorder: borderRadius != null
                ? OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(40.0),
                  )
                : const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
            hintText: hintText,
            contentPadding: const EdgeInsets.only(left: 25, right: 40, top: 15),
            prefixIcon: Container(
              padding: const EdgeInsets.only(left: 17),
              child: perfixIcon,
            ),
          ),
        ));
  }
}
