import 'package:admin_dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TrasnctionHistoryHeader extends StatelessWidget {
  const TrasnctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20,
        ),
        Text(
          'See all',
          style:
              AppStyles.styleMedium16.copyWith(color: const Color(0xff4eb7f2)),
        ),
      ],
    );
  }
}
