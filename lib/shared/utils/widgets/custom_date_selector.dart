import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_daily_life/shared/utils/utils.dart';

class CustomDateSelector extends StatefulWidget {
  final Timestamp? initialDate;
  final ValueChanged<DateTime?> onDateTimeSelected;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;

  const CustomDateSelector({
    Key? key,
    this.initialDate,
    required this.onDateTimeSelected,
    this.backgroundColor = Colors.green,
    this.textColor = Colors.white,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  State<CustomDateSelector> createState() => _CustomDateSelectorState();
}

class _CustomDateSelectorState extends State<CustomDateSelector> {
  final TextEditingController _dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dateController.text = (widget.initialDate != null)
        ? DateFormatHelper.readableDateTime(widget.initialDate?.toDate())
        : "";
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: widget.initialDate?.toDate() ?? DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        ).then((pickedDate) async {
          DateTime? selectedDateTime;
          if (pickedDate != null) {
            final TimeOfDay? pickedTime = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );

            if (pickedTime != null) {
              setState(() {
                selectedDateTime = DateTime(
                  pickedDate.year,
                  pickedDate.month,
                  pickedDate.day,
                  pickedTime.hour,
                  pickedTime.minute,
                );
              });

              _dateController.text =
                  DateFormatHelper.readableDateTime(selectedDateTime);

              widget.onDateTimeSelected(
                  DateFormatHelper.toDateTime(selectedDateTime!));
            }
          }
        });
      },
      child: TextFormField(
        controller: _dateController,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.date_range),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          labelText: 'Date',
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 3, color: Colors.grey),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        readOnly: true,
        enabled: false,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please select the date';
          }
          return null;
        },
      ),
    );
  }
}
