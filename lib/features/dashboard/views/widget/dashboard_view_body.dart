import 'package:flutter/material.dart';
import 'package:fruits_hup_dashboard/core/widget/custom_buttom.dart';

class DashboaedViewBody extends StatelessWidget {
  const DashboaedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            onPressed: () {},
            text: 'Add Data',
          ),
        ],
      ),
    );
  }
}
