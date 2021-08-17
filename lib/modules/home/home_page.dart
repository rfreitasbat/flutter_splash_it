import 'package:flutter/material.dart';
import 'package:split_it/modules/home/home_controller.dart';
import 'package:split_it/modules/home/home_state.dart';
import 'package:split_it/modules/home/widget/appbar/app_bar_widget.dart';
import 'package:split_it/modules/home/widget/event_tile_widget.dart';
import 'package:split_it/modules/login/model/user_model.dart';
import 'package:split_it/shared/models/event_model.dart';

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
    controller.Listen((state) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBarWidget(
        user: user,
        onTapAddButton: () {
          print("Clicou Parabêns");
        },
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                if (controller.state is HomeStateLoading) ...[
                  ...List.generate(
                      1,
                      (index) =>
                          EventTileWidget(isLoading: true, model: EventModel()))
                ] else if (controller.state is HomeStateSuccess) ...[
                  ...(controller.state as HomeStateSuccess)
                      .events
                      .map(
                        (e) => EventTileWidget(model: e),
                      )
                      .toList()
                ] else if (controller.state is HomeStateFailure) ...[
                  Text((controller.state as HomeStateFailure).massage)
                ] else ...[
                  Container()
                ]
              ],
            ),
          )),
    );
  }
}
