import 'package:flutter/material.dart';
import 'package:fruits_hup_dashboard/core/custom_text_form_field.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/views/widget/custom_check_box.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/views/widget/image_field.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/views/widget/is_featured_check_box.dart';

class AddProuductViewBody extends StatefulWidget {
  const AddProuductViewBody({super.key});

  @override
  State<AddProuductViewBody> createState() => _AddProuductViewBodyState();
}

class _AddProuductViewBodyState extends State<AddProuductViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: SingleChildScrollView(
        child: Form(
          autovalidateMode: autoValidateMode,
          key: _formKey,
          child: Column(
            children: [
              const CustomTextFormField(
                hintText: 'Product Name',
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                hintText: 'Product Price',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                hintText: 'Product Code',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                hintText: 'Product Description',
                textInputType: TextInputType.text,
                maxLines: 5,
              ),
              const SizedBox(
                height: 16,
              ),
              IsFeaturedCheckBox(
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 16,
              ),
              ImageField(
                onFileChanged: (image) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
