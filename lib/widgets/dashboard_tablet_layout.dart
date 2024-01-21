import 'package:admin_dash_board/widgets/custom_drawer.dart';
import 'package:admin_dash_board/widgets/dasboard_mobile_layout.dart';
import 'package:flutter/material.dart';

class DasBoardTabletLayout extends StatelessWidget {
  const DasBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: DasBoardMobileLayout(),
            )),
        SizedBox(width: 32),
      ],
    );
  }
}
