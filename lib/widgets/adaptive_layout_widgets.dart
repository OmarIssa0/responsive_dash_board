import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, covariant) {
      if (covariant.maxWidth < 600) {
        return mobileLayout(context);
      } else if (covariant.maxWidth < 900) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
