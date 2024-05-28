import 'package:expense_income/screen/activity_screen.dart';
import 'package:expense_income/screen/expense_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/conversion_provider.dart';
import '../provider/screen_route_provider.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);
    final direction = ref.watch(conversionDirectionProvider);
    final screens = [
      ExpenseScreen(
        isConvertedMoney: direction,
      ),
      const ActivityScreen()
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNavbar,
        onTap: (value) {
          ref.read(indexBottomNavbarProvider.notifier).update((state) => value);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet), label: 'Expense-Income'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded), label: 'Activity')
        ],
      ),
      body: screens[indexBottomNavbar],
    );
  }
}
