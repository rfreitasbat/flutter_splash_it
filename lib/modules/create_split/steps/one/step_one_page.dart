import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/steps/widget/step_input_text.dart';
import 'package:split_it/modules/create_split/steps/widget/step_title.dart';

class StepOnePage extends StatefulWidget {
  final void Function(String value) onChanged;

  StepOnePage({
    Key? key,
    required this.onChanged,
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
          onChanged: widget.onChanged,
          hintText: "Ëx: Churrasco",
        )
      ],
    );
  }
}
