import 'package:admin_dash_board/widgets/all_expensess.dart';
import 'package:admin_dash_board/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      SizedBox(height: 40),
      AllExpenses(),
      SizedBox(height: 24),
      QuickInvoice(),
    ]);
  }
}
