import 'package:admin_dash_board/model/drawer_item_model.dart';
import 'package:admin_dash_board/model/user_info_model.dart';
import 'package:admin_dash_board/utils/app_image.dart';
import 'package:admin_dash_board/widgets/active_and_inactive_item.dart';
import 'package:admin_dash_board/widgets/drawer_items_list_view.dart';
import 'package:admin_dash_board/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  image: Assets.imageAvater3,
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                    drawerModel: DrawerModel(
                        title: 'Setting system', image: Assets.imageSetting2)),
                InActiveDrawerItem(
                    drawerModel: DrawerModel(
                        title: 'Logout account', image: Assets.imageLogout)),
                SizedBox(height: 48)
              ],
            ),
          )
        ],
      ),
    );
  }
}
