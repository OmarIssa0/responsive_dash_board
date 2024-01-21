

import 'package:admin_dash_board/widgets/all_expenses_and_quick_Invoice_setion.dart';
import 'package:admin_dash_board/widgets/income_section.dart';
import 'package:admin_dash_board/widgets/my_cart_and_trasnction_history_section.dart';
import 'package:flutter/material.dart';

class DasBoardMobileLayout extends StatelessWidget {
  const DasBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCartAndTransctionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
