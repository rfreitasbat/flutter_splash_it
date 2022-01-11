import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/home/widget/appbar/app_bar_controller.dart';
import 'package:split_it/modules/home/widget/appbar/app_bar_state.dart';

import '../info_card_widget.dart';

class BottomAppBarWidget extends StatefulWidget {
  BottomAppBarWidget({Key? key}) : super(key: key);

  @override
  _BottomAppBarWidgetState createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  final controller = AppBarController();

  @override
  void initState() {
    controller.getDeshBoard();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      switch (controller.state.runtimeType) {
        case AppBarStateLoading:
          {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCardWidget(value: 0, isLoading: true),
                InfoCardWidget(
                  value: -0,
                  isLoading: true,
                ),
              ],
            );
          }
        case AppBarStateSuccess:
          {
            final dashBoard =
                (controller.state as AppBarStateSuccess).dashboarde;
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCardWidget(value: dashBoard.receive),
                InfoCardWidget(value: -dashBoard.send),
              ],
            );
          }
        case AppBarStateFailure:
          {
            final message = (controller.state as AppBarStateFailure).massage;
            return Text(message);
          }

        default:
          {
            return Container();
          }
      }
    });
  }
}
