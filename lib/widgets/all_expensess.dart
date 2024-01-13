import 'package:admin_dash_board/widgets/all_expenses_item_list_view.dart';
import 'package:admin_dash_board/widgets/all_expensess_heder.dart';
import 'package:admin_dash_board/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemListView()
        ],
      ),
    );
  }
}
