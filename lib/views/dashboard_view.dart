import 'package:admin_dash_board/utils/size_config.dart';
import 'package:admin_dash_board/widgets/adaptive_layout_widgets.dart';
import 'package:admin_dash_board/widgets/custom_drawer.dart';
import 'package:admin_dash_board/widgets/dasboard_mobile_layout.dart';
import 'package:admin_dash_board/widgets/dashboard_desktop_layout.dart';
import 'package:admin_dash_board/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    // SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
              backgroundColor: const Color(0xffFAFAFA),
              elevation: 0,
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DasBoardMobileLayout(),
        tabletLayout: (context) => const DasBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
