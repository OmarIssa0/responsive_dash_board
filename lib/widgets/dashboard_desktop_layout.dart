import 'package:admin_dash_board/widgets/all_expenses_and_quick_Invoice_setion.dart';
import 'package:admin_dash_board/widgets/custom_drawer.dart';
import 'package:admin_dash_board/widgets/my_cart_and_trasnction_history_section.dart';
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
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(width: 24),
        // Expanded(child: CustomDotIndicator(isActive: false))
        Expanded(
          child: MyCartAndTransctionHistorySection(),
        )
      ],
    );
  }
}
