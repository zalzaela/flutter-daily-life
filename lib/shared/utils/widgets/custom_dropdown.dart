import 'package:flutter/material.dart';

import '../utils.dart';

class CustomDropdown extends StatelessWidget {
  final String labelText;
  final String selectedValue;
  final void Function(String?)? onChanged;
  final List<String> dropdownItems;

  const CustomDropdown({
    Key? key,
    required this.labelText,
    required this.selectedValue,
    required this.onChanged,
    required this.dropdownItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      items: dropdownItems.map((String item) {
        return DropdownMenuItem(
          value: item,
          child: Text(capitalize(item)),
        );
      }).toList(),
    );
  }
}
