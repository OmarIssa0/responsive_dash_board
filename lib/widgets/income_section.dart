import 'package:admin_dash_board/widgets/custom_background_container.dart';
import 'package:admin_dash_board/widgets/income_chart.dart';
import 'package:admin_dash_board/widgets/income_details.dart';
import 'package:admin_dash_board/widgets/income_section_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        IncomeSectionHeader(),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          ),
        )
      ],
    ));
  }
}
