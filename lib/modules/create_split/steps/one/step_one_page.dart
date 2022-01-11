import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/create_split_page.dart';
import 'package:split_it/modules/create_split/steps/widget/step_input_text.dart';
import 'package:split_it/modules/create_split/steps/widget/step_title.dart';

class StepOnePage extends StatefulWidget {
  final CreateSplitController controller;

  StepOnePage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _StepOnePageState createState() => _StepOnePageState();
}

class _StepOnePageState extends State<StepOnePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTilteWidget(
          title: "Qual o nome",
          subTitle: "do evento?",
        ),
        StepInputTextWidget(
          onChanged: (value) {
            widget.controller.setEventName(value);
          },
          hintText: "Ëx: Churrasco",
        )
      ],
    );
  }
}
