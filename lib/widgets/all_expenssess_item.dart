import 'package:admin_dash_board/model/all_expenses_item_model.dart';
import 'package:admin_dash_board/widgets/inactive_and_active_all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });

  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel)
        : ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
