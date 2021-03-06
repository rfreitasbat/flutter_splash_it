import 'package:flutter/material.dart';
import 'package:split_it/modules/home/home_controller.dart';
import 'package:split_it/modules/home/widget/appbar/sliver_appbar_widget.dart';
import 'package:split_it/modules/login/model/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    controller.getEvents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 20,
            color: AppTheme.colors.backgroudSplash,
          ),
          SliverAppBarWidget(
              user: user,
              onTapAddButton: () {
                Navigator.pushNamed(context, "/Create_Split");
              },
              controller: controller),
        ],
      ),
    );
  }
}
