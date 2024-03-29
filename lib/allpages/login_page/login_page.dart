// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:agro_sanoat/allpages/animation_loading/loading.dart';
import 'package:agro_sanoat/allpages/login_page/login_page_provider.dart';
import 'package:agro_sanoat/allpages/login_page/widget/login_widget.dart';
import 'package:agro_sanoat/funcsions/main_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginPageProvider provider = LoginPageProvider();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (context) => provider,
      child: Consumer<LoginPageProvider>(
        builder: (context, value, child) => Scaffold(
          backgroundColor: MainColors.fromHex(MainColors.colorWhite),
          appBar: AppBar(
            elevation: 0,
            title: Text(
              "Ro'yhatdan o'tish",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: MainColors.fromHex(MainColors.colorGreen),
            toolbarHeight: 50,
          ),
          body: provider.loading
              ? Loading()
              : Stack(
                  children: [
                    Positioned(
                        top: 150,
                        right: -50,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: MainColors.fromHex(MainColors.colorGreen),
                              borderRadius: BorderRadius.circular(50)),
                        )),
                    Positioned(
                        top: 20,
                        left: -40,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: MainColors.fromHex(MainColors.colorGreen),
                              borderRadius: BorderRadius.circular(100)),
                        )),
                    LoginPageView(
                        size: size,
                        nameController: provider.nameController,
                        passwordController: provider.passwordController,
                        ontap: () {
                          provider.ontapChek(context);
                        },
                        eyeOntap: () {
                          provider.chooseEye();
                        },
                        eyeView: provider.eyeView),
                  ],
                ),
        ),
      ),
    );
  }
}
