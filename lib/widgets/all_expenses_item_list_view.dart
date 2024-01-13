import 'package:admin_dash_board/model/all_expenses_item_model.dart';
import 'package:admin_dash_board/utils/app_image.dart';
import 'package:admin_dash_board/widgets/all_expenssess_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final itemModel = [
    const AllExpensesItemModel(
        image: Assets.imageMoneys,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20.129'),
    const AllExpensesItemModel(
        image: Assets.imageCardReceive,
        title: 'Income',
        date: 'April 2022',
        price: r'$20.129'),
    const AllExpensesItemModel(
        image: Assets.imageCardSend,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20.129'),
  ];

  int selectedIndex = 0;

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
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(
                  isSelected: selectedIndex == index,
                  allExpensesItemModel: item,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == index,
              allExpensesItemModel: item,
            ),
          ));
        }
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
