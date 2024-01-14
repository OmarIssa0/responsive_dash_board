import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:admin_dash_board/widgets/trasnction_history_header.dart';
import 'package:admin_dash_board/widgets/trasnction_history_list_view.dart';
import 'package:flutter/material.dart';

class TrasnctionHistory extends StatelessWidget {
  const TrasnctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TrasnctionHistoryHeader(),
        const SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const SizedBox(height: 16),
        const TrasnctionHistoryListView(),
      ],
    );
  }
}
