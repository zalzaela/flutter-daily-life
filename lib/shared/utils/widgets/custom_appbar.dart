import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? color;
  final Color? textColor;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    required this.title,
    this.color = Colors.blue,
    this.textColor = Colors.white,
    this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(color: textColor)),
      backgroundColor: color,
      actions: actions,
    );
  }
}
