import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/steps/widget/step_input_text.dart';
import 'package:split_it/modules/create_split/steps/widget/step_title.dart';

class StepThreePage extends StatefulWidget {
  StepThreePage({Key? key}) : super(key: key);

  @override
  _StepThreePageState createState() => _StepThreePageState();
}

class _StepThreePageState extends State<StepThreePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTilteWidget(
            title: "Qual ou quais", subTitle: "itens você quer dividir"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text("1"),
              ),
              Expanded(
                flex: 3,
                child: StepInputTextWidget(
                  padding: EdgeInsets.zero,
                  onChanged: (value) {},
                  hintText: "Ex: Picanha",
                  align: TextAlign.start,
                ),
              ),
              Expanded(
                child: StepInputTextWidget(
                  padding: EdgeInsets.zero,
                  onChanged: (value) {},
                  hintText: "R\$ 0,00",
                  align: TextAlign.start,
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete))
            ],
          ),
        )
      ],
    );
  }
}
