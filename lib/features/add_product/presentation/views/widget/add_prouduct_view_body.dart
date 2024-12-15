import 'package:flutter/material.dart';

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
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: autoValidateMode,
        key: _formKey,
        child: const Column(),
      ),
    );
  }
}
