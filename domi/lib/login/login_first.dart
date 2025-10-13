import 'package:domi/component/input_info.dart';
import 'package:domi/layout/button_layout.dart';
import 'package:domi/layout/login_layout.dart';
import 'package:flutter/material.dart';

class LoginFirst extends StatelessWidget {
  const LoginFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginLayout(
      text: "DOMI에 로그인하기",
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            InputInfo(act: "아이디", secure: false),

            SizedBox(height: 26),

            InputInfo(act: "비밀번호", secure: true),

            ButtonLayout(act: "로그인"),

            SizedBox(height: 16),

            ButtonLayout(act: "회원가입"),
          ],
        ),
      ),
    );
  }
}
