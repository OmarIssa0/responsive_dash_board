import 'package:admin_dash_board/model/all_expenses_item_model.dart';
import 'package:admin_dash_board/utils/app_image.dart';
import 'package:admin_dash_board/widgets/all_expenssess_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});

  static const itemModel = [
    AllExpensesItemModel(
        image: Assets.imageMoneys,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20.129'),
    AllExpensesItemModel(
        image: Assets.imageCardReceive,
        title: 'Income',
        date: 'April 2022',
        price: r'$20.129'),
    AllExpensesItemModel(
        image: Assets.imageCardSend,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20.129'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      // children: itemModel
      //     .map((e) => AllExpensesItem(allExpensesItemModel: e))
      //     .toList(),
      children: itemModel.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(
                  allExpensesItemModel: item, isSelected: false),
            ),
          );
        } else {
          return Expanded(
              child: AllExpensesItem(
                  allExpensesItemModel: item, isSelected: false));
        }
      }).toList(),
    );
  }
}
