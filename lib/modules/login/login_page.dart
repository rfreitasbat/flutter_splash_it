import 'package:flutter/material.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/widgets/social_button.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController(
        service: LoginServiceImpl(),
        onUpdate: () {
          if (controller.state is LoginStateSuccess) {
            final user = (controller.state as LoginStateSuccess).user;
            Navigator.pushReplacementNamed(context, "/Home", arguments: user);
          } else {
            setState(() {});
          }
        });
    super.initState();
  }

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
                    style: AppTheme.textStyles.title,
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
                  style: AppTheme.textStyles.button,
                ),
              ),
              SizedBox(height: 32),
              if (controller.state is LoginStateLoading) ...[
                CircularProgressIndicator(),
              ] else if (controller.state is LoginStateFailure) ...[
                Text((controller.state as LoginStateFailure).massage)
              ] else
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: SocialButtonWidget(
                    imagePath: "assets/images/google.png",
                    textButton: "Entrar com google",
                    onTap: () async {
                      controller.googleSignIn();
                    },
                  ),
                ),
              SizedBox(height: 12),
              //TODO (a fazer) preciza fazer configuração Apple
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 32),
              //   child: SocialButtonWidget(
              //     imagePath: "assets/images/apple.png",
              //     textButton: "Ëntrar com apple",
              //     onTap: () async {
              //       try {
              //         {
              //           final credential =
              //               await SignInWithApple.getAppleIDCredential(
              //             scopes: [
              //               AppleIDAuthorizationScopes.email,
              //               AppleIDAuthorizationScopes.fullName,
              //             ],
              //           );
              //           print(credential);
              //           // Now send the credential (especially `credential.authorizationCode`) to your server to create a session
              //           // after they have been validated with Apple (see `Integration` section for more information on how to do this)
              //         }
              //       } catch (e) {
              //         print(e);
              //       }
              //     },
              //   ),
              //),
            ],
          )
        ],
      ),
    );
  }
}
