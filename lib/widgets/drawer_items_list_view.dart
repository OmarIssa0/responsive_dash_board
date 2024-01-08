import 'package:admin_dash_board/model/drawer_item_model.dart';
import 'package:admin_dash_board/utils/app_image.dart';
import 'package:admin_dash_board/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerModel> items = [
    const DrawerModel(title: 'Dashboard', image: Assets.imageIconDashboard),
    const DrawerModel(title: 'My Transaction', image: Assets.imageConvertCard),
    const DrawerModel(title: 'Statistics', image: Assets.imageGraph),
    const DrawerModel(title: 'Wallet Account', image: Assets.imageWallet2),
    const DrawerModel(title: 'My Investments', image: Assets.imageChart2),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
                drawerModel: items[index], isActive: activeIndex == index),
          ),
        );
      },
    );
  }
}
