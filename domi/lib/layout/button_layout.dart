import 'package:flutter/material.dart';

class ButtonLayout extends StatelessWidget {
  final act;

  const ButtonLayout({super.key, required this.act});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.5),
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {},
          child: Text("$act", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
