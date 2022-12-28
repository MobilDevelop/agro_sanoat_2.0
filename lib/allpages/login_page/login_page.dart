// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:agro_sanoat/allpages/login_page/widget/login_widget.dart';
import 'package:agro_sanoat/funcsions/main_colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double viewInset = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 100,
              right: -50,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: MainColors.fromHex(MainColors.colorGreen),
                    borderRadius: BorderRadius.circular(50)),
              )),
          Positioned(
              top: -50,
              left: -50,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: MainColors.fromHex(MainColors.colorGreen),
                    borderRadius: BorderRadius.circular(100)),
              )),
          LoginPageView(
            size: size,
          ),
        ],
      ),
    );
  }
}