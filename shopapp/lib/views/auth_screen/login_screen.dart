import 'package:flutter/material.dart';
import 'package:shopapp/consts/consts.dart';
import 'package:shopapp/widget_common/app_logo_widget.dart';
import 'package:shopapp/widget_common/bg_widget.dart';
import 'package:shopapp/widget_common/custom_textfield.dart';

import '../../widget_common/custom_textfield2.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  @override
  Widget build(BuildContext context) {
    return bgWidget(child: Scaffold(
      body: Center(
child: Column(children: [
   SizedBox(height: 90),
  appLogo(),
  10.heightBox,
  Text("Login to ShopApp" , style: TextStyle(fontFamily: bold , fontSize: 22 , color: Colors.white),),
  10.heightBox,
  Column(
    children: [
       customTextField(),
       10.heightBox,
       customTextField2(),
       10.heightBox,
       TextButton(onPressed: onPressed, child: child)
    ],
  ).box.white.rounded.padding(EdgeInsets.all(15)).width(context.screenWidth-70).make(),
]),
      ),
    ));
  }
}