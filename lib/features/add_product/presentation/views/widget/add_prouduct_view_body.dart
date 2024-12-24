import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hup_dashboard/core/custom_text_form_field.dart';
import 'package:fruits_hup_dashboard/core/widget/custom_buttom.dart';
import 'package:fruits_hup_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/manager/cubit/add_product_cubit.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/views/add_product_view.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/views/widget/custom_check_box.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/views/widget/image_field.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/views/widget/is_featured_check_box.dart';
import 'package:fruits_hup_dashboard/features/add_product/presentation/views/widget/is_organic_check_box.dart';

class AddProuductViewBody extends StatefulWidget {
  const AddProuductViewBody({super.key});

  @override
  State<AddProuductViewBody> createState() => _AddProuductViewBodyState();
}

class _AddProuductViewBodyState extends State<AddProuductViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  late String name, code, description;
  late num price, expirationMonths, numberOfColories, unitAmount;
  File? image;
  bool isFeatured = false;
  bool isOrganic = false;

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
              CustomTextFormField(
                onSaved: (value) {
                  name = value!;
                },
                hintText: 'Product Name',
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  price = num.parse(value!);
                },
                hintText: 'Product Price',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  expirationMonths = num.parse(value!);
                },
                hintText: 'Expiration Months',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  numberOfColories = num.parse(value!);
                },
                hintText: 'Number Of Colories',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  unitAmount = num.parse(value!);
                },
                hintText: 'Unit Amount',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  code = value!.toLowerCase();
                },
                hintText: 'Product Code',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  description = value!;
                },
                hintText: 'Product Description',
                textInputType: TextInputType.text,
                maxLines: 5,
              ),
              const SizedBox(
                height: 16,
              ),
              IsOranicCheckBox(
                onChanged: (value) {
                  isOrganic = value;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              IsFeaturedCheckBox(
                onChanged: (value) {
                  isFeatured = value;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ImageField(
                onFileChanged: (image) {
                  this.image = image;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              CustomButton(
                onPressed: () {
                  if (image != null) {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      AddProductInputEntity(
                        reviews: [],
                        isOrganic: isOrganic,
                        expirationMonths: expirationMonths.toInt(),
                        numOfCalories: numberOfColories.toInt(),
                        unitAmount: unitAmount.toInt(),
                        name: name,
                        code: code,
                        description: description,
                        price: price,
                        image: image!,
                        isFeatured: isFeatured,
                      );
                      context.read<AddProductCubit>().addProduct(
                            AddProductInputEntity(
                              reviews: [],
                              isOrganic: isOrganic,
                              expirationMonths: expirationMonths.toInt(),
                              numOfCalories: numberOfColories.toInt(),
                              unitAmount: unitAmount.toInt(),
                              name: name,
                              code: code,
                              description: description,
                              price: price,
                              image: image!,
                              isFeatured: isFeatured,
                            ),
                          );
                    } else {
                      autoValidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  } else {
                    shErroe(context);
                  }
                },
                text: 'Add Product',
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void shErroe(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Please select an image',
        ),
      ),
    );
  }
}
