import 'package:domi/layout/login_layout.dart';
import 'package:flutter/material.dart';

class LoadScreen extends StatelessWidget {
  const LoadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginLayout(text: "DOMI");
  }
}
