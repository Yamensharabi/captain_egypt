import 'package:captain_egypt/view/auth/login/widgets/login_details_widget.dart';
import 'package:captain_egypt/view/auth/login/widgets/login_widget.dart';
import 'package:captain_egypt/view/auth/login/widgets/otp_widet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  PageController controller=PageController();
  List<Widget> list= [
    const LoginWidget(),
    const  DetailsLoginData(),
    const OtpScreen(),
  ];
  int _curr=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:PageView(
        children:
        list,
        scrollDirection: Axis.horizontal,
        controller: controller,
        onPageChanged: (num){
          setState(() {
            _curr=num;
          });
        },
      ),
    );

  }
}

