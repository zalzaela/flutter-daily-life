import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextCapitalization? textCapitalization;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Function(PointerDownEvent)? onTapOutside;
  final String labelText;
  final FocusNode? focusNode;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? inputFormatters;
  const CustomTextField({
    super.key,
    required this.controller,
    this.textCapitalization,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.onTapOutside,
    this.focusNode,
    this.prefixIcon,
    this.inputFormatters,
    this.minLines = 1,
    this.maxLength = 30,
    this.maxLines = 1,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      keyboardType: keyboardType,
      onChanged: onChanged,
      onTapOutside: onTapOutside,
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      minLines: minLines,
      maxLines: maxLines,
      maxLength: maxLength,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: labelText,
        counterText: "",
      ),
    );
  }
}
