import 'package:domi_ft_code/common/constents/font.dart';
import 'package:flutter/cupertino.dart';

class DomiTitle extends StatelessWidget {
  final String title;
  const DomiTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: DomiTextStyle.title,);
  }
}
