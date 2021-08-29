import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_page.dart';
import 'package:split_it/modules/error/error_page.dart';
import 'package:split_it/modules/home/home_page.dart';
import 'package:split_it/modules/login/login_page.dart';
import 'package:split_it/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Split.it",
      initialRoute: "/Splash",
      routes: {
        "/Splash": (context) => SplashPage(),
        "/Login": (context) => LoginPage(),
        "/Error": (context) => ErrorPage(),
        "/Home": (context) => HomePage(),
        "/Create_Split": (context) => CreateSplitPage(),
      },
    );
  }
}
