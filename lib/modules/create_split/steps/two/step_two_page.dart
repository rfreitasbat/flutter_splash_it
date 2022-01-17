import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/create_split/steps/two/step_two_controller.dart';
import 'package:split_it/modules/create_split/steps/widget/person_tile.dart';
import 'package:split_it/modules/create_split/steps/widget/step_input_text.dart';
import 'package:split_it/modules/create_split/steps/widget/step_title.dart';

class StepTwoPage extends StatefulWidget {
  StepTwoPage({Key? key}) : super(key: key);

  @override
  _StepTwoPageState createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {
  final controller = StepTwoController();
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
          if (controller.frinds.isEmpty) {
            return Text("Nenhum amigo encontrado");
          } else {
            return Column(
              children: controller.frinds
                  .map((e) => PersonTileWidget(name: e['name']))
                  .toList(),
            );
          }
        }),
      ],
    );
  }
}
