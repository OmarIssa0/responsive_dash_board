import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:admin_dash_board/widgets/range_options.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20),
        Expanded(child: SizedBox()),
        RangeOption(),
      ],
    );
  }
}
