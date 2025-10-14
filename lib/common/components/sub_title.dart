import 'package:flutter/material.dart';
import 'package:domi_ft_code/common/constents/font.dart';

class DomiSubTitle extends StatelessWidget {
  final String title;
  const DomiSubTitle({super.key, required this.title,});

  @override
  Widget build(BuildContext context) {
    return Text(title,style: DomiTextStyle.allTitle);
  }
}
