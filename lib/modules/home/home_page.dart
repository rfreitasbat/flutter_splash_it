import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widget/app_bar_widget.dart';
import 'package:split_it/modules/home/widget/event_tile_widget.dart';
import 'package:split_it/modules/login/model/user_model.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final events = [
    EventModel(
        created: DateTime.now(), title: "Churrasco", value: 526, people: 5),
    EventModel(
        created: DateTime.now(), title: "Churrasco", value: -526, people: 5),
    EventModel(
        created: DateTime.now(), title: "Churrasco", value: -526, people: 5),
    EventModel(
        created: DateTime.now(), title: "Churrasco", value: 526, people: 5),
    EventModel(
        created: DateTime.now(), title: "Churrasco", value: -526, people: 5),
  ];

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
                ...events
                    .map(
                      (e) => EventTileWidget(model: e),
                    )
                    .toList()
              ],
            ),
          )),
    );
  }
}
