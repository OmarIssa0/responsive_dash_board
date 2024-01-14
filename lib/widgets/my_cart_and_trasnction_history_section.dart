import 'package:admin_dash_board/widgets/custom_background_container.dart';
import 'package:admin_dash_board/widgets/my_cart_section.dart';
import 'package:admin_dash_board/widgets/transtion_history.dart';
import 'package:flutter/material.dart';

class MyCartAndTransctionHistorySection extends StatelessWidget {
  const MyCartAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCartSection(),
          Divider(
            height: 40,
            color: Color(0xffF1f1f1),
          ),
          TrasnctionHistory(),
        ],
      ),
    );
  }
}
