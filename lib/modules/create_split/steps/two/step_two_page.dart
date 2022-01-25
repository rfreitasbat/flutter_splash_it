import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/steps/two/step_two_controller.dart';
import 'package:split_it/modules/create_split/steps/widget/person_tile.dart';
import 'package:split_it/modules/create_split/steps/widget/step_input_text.dart';
import 'package:split_it/modules/create_split/steps/widget/step_title.dart';

class StepTwoPage extends StatefulWidget {
  final CreateSplitController controller;
  StepTwoPage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _StepTwoPageState createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {
  late StepTwoController controller;

  @override
  void initState() {
    controller = StepTwoController(controller: widget.controller);
    controller.getFriends();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTilteWidget(
          title: "Com quem",
          subTitle: "você quer dividir?",
        ),
        StepInputTextWidget(
          onChanged: (value) {
            controller.onChange(value);
          },
          hintText: "Nome da pessoa",
        ),
        SizedBox(height: 35),
        Observer(builder: (_) {
          if (controller.selectedFriends.isEmpty) {
            return Container();
          } else {
            return Column(children: [
              ...controller.selectedFriends
                  .map((e) => PersonTileWidget(
                        data: e,
                        isRemoved: true,
                        onPressed: () {
                          controller.removeFriend(e);
                        },
                      ))
                  .toList(),
              SizedBox(height: 15),
            ]);
          }
        }),
        Observer(builder: (_) {
          if (controller.items.isEmpty) {
            return Text("Nenhum amigo encontrado");
          } else {
            return Column(
              children: controller.items
                  .map((e) => PersonTileWidget(
                        data: e,
                        onPressed: () {
                          controller.addFriend(e);
                        },
                      ))
                  .toList(),
            );
          }
        }),
      ],
    );
  }
}
