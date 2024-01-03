import 'package:admin_dash_board/model/drawer_item_model.dart';
import 'package:admin_dash_board/widgets/active_and_inactive_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerModel, required this.isActive});

  final DrawerModel drawerModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerModel: drawerModel)
        : InActiveDrawerItem(drawerModel: drawerModel);
  }
}
