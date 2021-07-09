import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: AppTheme.colors.backgroud),
          child: SafeArea(
            top: true,
            bottom: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Opacity(
                          opacity: 0.6,
                          child: Image.asset(
                            "assets/images/retangulo-dir.png",
                            width: 150,
                            height: 98,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Opacity(
                          opacity: 0.6,
                          child: Image.asset(
                            "assets/images/retangulo-dir.png",
                            width: 120,
                            height: 54,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/logo.png",
                  width: 128,
                  height: 112,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Opacity(
                          opacity: 0.6,
                          child: Image.asset(
                            "assets/images/retangulo-esq.png",
                            width: 120,
                            height: 54,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Opacity(
                          opacity: 0.6,
                          child: Image.asset(
                            "assets/images/retangulo-esq.png",
                            width: 150,
                            height: 98,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
