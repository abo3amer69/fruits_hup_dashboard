import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hup_dashboard/core/services/custom_bloc_observer.dart';
import 'package:fruits_hup_dashboard/core/services/git_it_services.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/views/widget/image_field.dart';
import 'package:fruits_hup_dashboard/features/dashboard/views/dashboard_view.dart';
import 'package:fruits_hup_dashboard/firebase_options.dart';
import 'package:image_picker/image_picker.dart';

import 'core/helper_function/on_generate_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  setupGetit();
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
