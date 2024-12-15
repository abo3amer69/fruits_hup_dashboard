import 'package:flutter/material.dart';
import 'package:fruits_hup_dashboard/core/widget/custom_buttom.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/views/add_product_view.dart';

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
            onPressed: () {
              Navigator.pushNamed(context, AddProductView.routeName);
            },
            text: 'Add Data',
          ),
        ],
      ),
    );
  }
}
