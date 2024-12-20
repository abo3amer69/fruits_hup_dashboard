import 'package:flutter/material.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/views/widget/image_field.dart';
import 'package:fruits_hup_dashboard/features/dashboard/views/dashboard_view.dart';
import 'package:image_picker/image_picker.dart';

import 'core/helper_function/on_generate_route.dart';

void main() {
  runApp(const FruitsHupDashboard());
}

class FruitsHupDashboard extends StatelessWidget {
  const FruitsHupDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: DashboardView.routeName,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
