import 'package:flutter/material.dart';
import 'package:flutter_daily_life/features/income/pages/income_page.dart';
import 'package:flutter_daily_life/shared/utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Home",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // const Dashboard(),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const IncomePage(),
                ));
              },
              child: const Text('Income'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => const SpendingPage(),
                //   ));
              },
              child: const Text('Spending'),
            ),
          ],
        ),
      ),
    );
  }
}
