import 'package:domi_ft_code/common/constents/color.dart';
import 'package:flutter/material.dart';
import '../constents/font.dart';

class DomiTextFormField extends StatelessWidget {
  const DomiTextFormField({
    super.key,
    required this.title,
    required this.hintText,
    required this.obsText,
    this.suffixIcon,
    this.keyBoradType,
    required this.controller,
  });

  final String title;
  final String hintText;
  final bool obsText;
  final Widget? suffixIcon;
  final TextInputType? keyBoradType;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: DomiColor.gray500),
    );
    final focusBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Color(0xff939393)),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: DomiTextStyle.rowTitle),
        SizedBox(height: 4),
        TextFormField(
          controller: controller,
          keyboardType: keyBoradType,
          onTapOutside: (event) =>
              FocusManager.instance.primaryFocus?.unfocus(),
          obscureText: obsText,
          style: TextStyle(decorationThickness: 0),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: DomiTextStyle.sub,
            border: baseBorder,
            focusedBorder: focusBorder,
            suffixIcon: suffixIcon,
            contentPadding: EdgeInsets.symmetric(vertical: 13,horizontal: 16),
          ),
        ),
      ],
    );
  }
}