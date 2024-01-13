import 'package:admin_dash_board/model/user_info_model.dart';
import 'package:admin_dash_board/utils/app_image.dart';
import 'package:admin_dash_board/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.imageAvater,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imageAvater2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imageAvater3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );

    // return SizedBox(
    //   height: 100,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //           child: UserInfoListTile(userInfoModel: items[index]));
    //     },
    //   ),
    // );
  }
}
