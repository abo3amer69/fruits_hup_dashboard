import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hup_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fruits_hup_dashboard/core/repos/product_repo/products_repo.dart';
import 'package:fruits_hup_dashboard/core/services/git_it_services.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/manager/cubit/add_product_cubit.dart';
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
      body: BlocProvider(
        create: (context) =>
            AddProductCubit(getIt.get<ImagesRepo>(), getIt.get<ProductsRepo>()),
        child: const AddProuductViewBody(),
      ),
    );
  }
}
