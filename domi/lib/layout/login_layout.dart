import 'package:flutter/material.dart';

class LoginLayout extends StatelessWidget {
  final text;
  final Widget? child;

  const LoginLayout({super.key, required this.text, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img/DOMI.png'),
              SizedBox(height: 19),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 34),
              ),
              SizedBox(height: 26),
              if (child != null) child!,
            ],
          ),
        ),
      ),
    );
  }
}
