import 'package:flutter/material.dart';

class InputInfo extends StatelessWidget {
  final act;
  final secure;

  const InputInfo({super.key, required this.act, required this.secure});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                act,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
              ),
            ],
          ),
          TextField(
            obscureText: secure,
            autocorrect: false,
            enableSuggestions: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              hintText: "$act 입력",
            ),
          ),
        ],
      ),
    );
  }
}
