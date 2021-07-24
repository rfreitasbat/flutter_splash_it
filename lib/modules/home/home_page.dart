import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widget/appbar_widget.dart';
import 'package:split_it/modules/login/model/user_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBarWidget(
        user: user,
      ),
    );
  }
}
