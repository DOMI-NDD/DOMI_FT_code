import 'package:domi_ft_code/common/constents/color.dart';
import 'package:domi_ft_code/common/constents/font.dart';
import 'package:flutter/material.dart';

class DomiButton extends StatelessWidget {
  final void Function()? onpressed;
  final String text;

  const DomiButton({super.key, required this.onpressed, required this.text});

  @override
  Widget build(BuildContext context) {
    final buttonBackgroundColor = WidgetStateProperty.resolveWith<Color>((
      states,
    ) {
      if (states.contains(WidgetState.disabled)) return DomiColor.gray400;
      if (states.contains(WidgetState.pressed)) return DomiColor.primary;
      return DomiColor.Colorsecondary;
    });
    final buttonForegroundColor = WidgetStateProperty.resolveWith<Color>((
      states,
    ) {
      if (states.contains(WidgetState.disabled)) return DomiColor.white;
      if (states.contains(WidgetState.pressed)) return DomiColor.white;
      return DomiColor.white;
    });
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onpressed,
        style: ButtonStyle(
          backgroundColor: buttonBackgroundColor,
          foregroundColor: buttonForegroundColor,
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 14)),
        ),
        child: Text(
          text,
          style: DomiTextStyle.rowTitle.copyWith(color: DomiColor.white),
        ),
      ),
    );
  }
}
