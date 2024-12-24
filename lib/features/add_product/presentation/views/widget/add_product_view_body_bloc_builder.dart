import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hup_dashboard/core/helper_function/build_error_bar.dart';
import 'package:fruits_hup_dashboard/core/widget/custom_progress_hud.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/manager/cubit/add_product_cubit.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/views/widget/add_prouduct_view_body.dart';

class addProductViewBodyBlockBuilder extends StatelessWidget {
  const addProductViewBodyBlockBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductCubit, AddProductState>(
      listener: (context, state) {
        if (state is AddProductSuccess) {
          buildBar(context, 'Product added successfully');
        }
        if (state is AddProductFailure) {
          buildBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is AddProductLoading,
          child: const AddProuductViewBody(),
        );
      },
    );
  }
}
