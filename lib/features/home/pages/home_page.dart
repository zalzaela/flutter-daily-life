import 'package:flutter/material.dart';
import 'package:flutter_daily_life/features/income/pages/income_form.dart';
import 'package:flutter_daily_life/features/income/pages/income_page.dart';
import 'package:flutter_daily_life/features/spending/pages/spending_form.dart';
import 'package:flutter_daily_life/features/spending/pages/spending_page.dart';
import 'package:flutter_daily_life/shared/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Screen'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;
  final List<String> _appBarTitles = ['Income', 'Home', 'Spending'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: _appBarTitles[_currentIndex],
      ),
      body: _buildPageContent(),
      bottomNavigationBar: _buildBottomNavigationBar(),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildPageContent() {
    switch (_currentIndex) {
      case 0:
        return const IncomePage();
      case 1:
        return const HomeScreen();
      case 2:
        return const SpendingPage();
      default:
        return Container();
    }
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        elevation: 0,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.attach_money, 0),
            label: 'Income',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.home, 1),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.money_off, 2),
            label: 'Spending',
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      behavior: HitTestBehavior.translucent, // Remove the ink splash effect
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentIndex == index ? Colors.blue : Colors.transparent,
        ),
        child: Icon(
          icon,
          color: _currentIndex == index ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    if (_currentIndex == 0) {
      return FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const IncomeFormPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      );
    } else if (_currentIndex == 2) {
      return FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SpendingFormPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
