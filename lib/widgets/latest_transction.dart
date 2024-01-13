import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:admin_dash_board/widgets/latest_transction_list_view.dart';
import 'package:flutter/material.dart';

class LatestTransction extends StatelessWidget {
  const LatestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: AppStyles.styleMedium16),
        SizedBox(height: 12),
        LatestTransctionListView()
      ],
    );
  }
}
