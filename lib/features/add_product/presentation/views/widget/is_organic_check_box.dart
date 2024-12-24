import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_style.dart';
import 'custom_check_box.dart';

class IsOranicCheckBox extends StatefulWidget {
  const IsOranicCheckBox({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;

  @override
  State<IsOranicCheckBox> createState() => _IsOranicCheckBoxState();
}

class _IsOranicCheckBoxState extends State<IsOranicCheckBox> {
  bool isOrganic = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Is Product Organic?',
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
            isOrganic = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isOrganic,
        ),
      ],
    );
  }
}
