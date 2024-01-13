import 'package:admin_dash_board/widgets/custom_background_container.dart';
import 'package:admin_dash_board/widgets/latest_transction.dart';
import 'package:admin_dash_board/widgets/quick_invice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransction(),
          Divider(height: 48),
        ],
      ),
    );
  }
}
