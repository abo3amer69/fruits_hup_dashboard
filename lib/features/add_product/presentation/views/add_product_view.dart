import 'package:flutter/material.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/views/widget/add_prouduct_view_body.dart';

import '../../../../core/widget/build_app_bar.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});
  static const routeName = 'add-product';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(
        'Add Product',
      ),
      body: const AddProuductViewBody(),
    );
  }
}
