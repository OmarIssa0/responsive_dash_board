import 'package:admin_dash_board/model/drawer_item_model.dart';
import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerModel,
  });

  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModel.image),
      title: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child:
              Text(drawerModel.title, style: AppStyles.styleBold16(context))),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerModel,
  });

  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModel.image),
      title: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child:
              Text(drawerModel.title, style: AppStyles.styleMedium16(context))),
    );
  }
}
