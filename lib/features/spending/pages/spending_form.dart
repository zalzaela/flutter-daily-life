import 'package:flutter/material.dart';
import 'package:flutter_daily_life/shared/utils/utils.dart';

class SpendingFormPage extends StatelessWidget {
  const SpendingFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Spending Form",
      ),
      body: Center(
        child: Text("Spending Form Page"),
      ),
    );
  }
}
