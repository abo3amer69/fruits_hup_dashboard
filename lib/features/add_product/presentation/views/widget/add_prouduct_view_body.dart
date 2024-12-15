import 'package:flutter/material.dart';
import 'package:fruits_hup_dashboard/core/custom_text_form_field.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/views/widget/image_field.dart';

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
          child: const Column(
            children: [
              CustomTextFormField(
                hintText: 'Product Name',
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hintText: 'Product Price',
                textInputType: TextInputType.number,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hintText: 'Product Code',
                textInputType: TextInputType.number,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hintText: 'Product Description',
                textInputType: TextInputType.text,
                maxLines: 5,
              ),
              SizedBox(
                height: 16,
              ),
              ImageField(),
            ],
          ),
        ),
      ),
    );
  }
}
