import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Container(
                  width: 236,
                  child: Text(
                    "Divida suas contas com seus amigos",
                    style: GoogleFonts.montserrat(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: AppTheme.colors.title,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: Image.asset("assets/images/emoji.png"),
                title: Text(
                  "Faça seu Login com uma das contas abaixo",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.colors.button,
                  ),
                ),
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.fromBorderSide(
                          BorderSide(color: AppTheme.colors.border))),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 57,
                        height: 57,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 16,
                            ),
                            Image.asset("assets/images/google.png"),
                            SizedBox(
                              width: 16,
                            ),
                            Container(
                              width: 1,
                              color: AppTheme.colors.border,
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Entrar com Google",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          textStyle: TextStyle(color: AppTheme.colors.button),
                        ),
                      ),
                      Expanded(child: Container())
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.fromBorderSide(
                          BorderSide(color: AppTheme.colors.border))),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 57,
                        height: 57,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 16,
                            ),
                            Image.asset("assets/images/apple.png"),
                            SizedBox(
                              width: 16,
                            ),
                            Container(
                              width: 1,
                              color: AppTheme.colors.border,
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Entrar com Apple",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          textStyle: TextStyle(color: AppTheme.colors.button),
                        ),
                      ),
                      Expanded(child: Container())
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
