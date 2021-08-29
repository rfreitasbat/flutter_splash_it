import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/steps/widget/person_tile.dart';
import 'package:split_it/modules/create_split/steps/widget/step_input_text.dart';
import 'package:split_it/modules/create_split/steps/widget/step_title.dart';

class StepTwoPage extends StatefulWidget {
  StepTwoPage({Key? key}) : super(key: key);

  @override
  _StepTwoPageState createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTilteWidget(
          title: "Com quem",
          subTitle: "você quer dividir?",
        ),
        StepInputTextWidget(
          onChanged: (value) {},
          hintText: "Nome da pessoa",
        ),
        SizedBox(height: 35),
        PersonTileWidget(name: "Ramon Freitas Batista"),
        PersonTileWidget(name: "Ramon Freitas Batista"),
        PersonTileWidget(name: "Ramon Freitas Batista"),
      ],
    );
  }
}
