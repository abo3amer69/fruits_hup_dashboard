import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_style.dart';
import 'custom_check_box.dart';

class IsFeaturedCheckBox extends StatefulWidget {
  const IsFeaturedCheckBox({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;

  @override
  State<IsFeaturedCheckBox> createState() => _IsFeaturedCheckBoxState();
}

class _IsFeaturedCheckBoxState extends State<IsFeaturedCheckBox> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Is Featured Item?',
                style: TextStyles.semiBold13.copyWith(
                  color: const Color(0xff949D9E),
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        const Expanded(
          child: SizedBox(
            width: 16,
          ),
        ),
        CustomCheckBox(
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
      ],
    );
  }
}
