import 'package:flutter/material.dart';

class ExInTextFieldWithLabel extends StatelessWidget {
  const ExInTextFieldWithLabel({
    super.key,
    required this.labelText,
    required this.hintText,
    this.controller,
    this.onChanged,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onTap,
  });

  final String labelText;
  final String hintText;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final Function(String)? onFieldSubmitted;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExInTextFieldLabel(
          labelText: labelText
        ),
        ExInTextField(
          hintText: hintText,
          controller: controller,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onFieldSubmitted: onFieldSubmitted,
          onTap: onTap,
        )
      ],
    );
  }
}

class ExInTextField extends StatelessWidget {
  const ExInTextField({
    super.key,
    this.isDense = true,
    this.contentPadding = const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
    this.filled = true,
    this.fillColor = const Color(0xFF555555),
    this.focusColor = const Color(0xFF333333),
    this.border = const OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF333333))
    ),
    this.focusBorder = const OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF333333))
    ),
    required this.hintText,
    this.hintStyle = const TextStyle(
      color: Color(0xCCFAFAFA)
    ),
    this.controller,
    this.style = const TextStyle(
      color: Color(0xFFFAFAFA)
    ),
    this.margin = const EdgeInsets.symmetric(horizontal: 16.0),
    this.textInputAction = TextInputAction.next,
    this.onChanged,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onTap,
  });

  final bool isDense;
  final EdgeInsetsGeometry contentPadding;
  final bool filled;
  final Color fillColor;
  final Color focusColor;
  final OutlineInputBorder border;
  final OutlineInputBorder focusBorder;
  final String hintText;
  final TextStyle hintStyle;
  final TextEditingController? controller;
  final TextStyle style;
  final EdgeInsetsGeometry margin;
  final TextInputAction textInputAction;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final Function(String)? onFieldSubmitted;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        textInputAction: textInputAction,
        decoration:  InputDecoration(
          isDense: isDense,
          contentPadding: contentPadding,
          filled: filled,
          fillColor: fillColor,
          focusColor: focusColor,
          border: border,
          focusedBorder: focusBorder,
          hintText: hintText,
          hintStyle: hintStyle,
        ),
        style: style,
        controller: controller,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        onTap: onTap,
      ),
    );
  }
}

class ExInText extends StatelessWidget {
  const ExInText({
    super.key,
    required this.text,
    this.margin = const EdgeInsets.all(0),
    this.style = const TextStyle(
      color: Color(0xFF333333),
      fontSize: 24
    )
  });

  final String text;
  final EdgeInsetsGeometry? margin;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: margin,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}

class ExInTextFieldLabel extends StatelessWidget {
  const ExInTextFieldLabel({
    super.key,
    required this.labelText,
    this.style = const TextStyle(
      fontSize: 14,
      color: Color(0xFF333333)
    ),
    this.margin = const EdgeInsets.symmetric(horizontal: 4.0),
  });

  final String labelText;
  final TextStyle style;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: double.infinity,
      child: Text(
        labelText,
        style: style,
        textAlign: TextAlign.left,
      ),
    );
  }
}
