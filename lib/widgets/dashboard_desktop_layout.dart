import 'package:admin_dash_board/widgets/all_expensess.dart';
import 'package:admin_dash_board/widgets/custom_drawer.dart';
import 'package:admin_dash_board/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Column(children: [
            AllExpenses(),
            SizedBox(height: 24),
            QuickInvoice(),
          ]),
        ),
      ],
    );
  }
}
