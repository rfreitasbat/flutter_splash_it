import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:split_it/modules/home/widget/icon_value.dart';
import 'package:split_it/theme/app_theme.dart';

import 'loading_widget.dart';

class InfoCardWidget extends StatelessWidget {
  final double value;
  final bool isLoading;
  const InfoCardWidget({
    Key? key,
    required this.value,
    this.isLoading = false,
  }) : super(key: key);

  TextStyle get textStyle => value >= 0
      ? AppTheme.textStyles.infoCardValue1
      : AppTheme.textStyles.infoCardValue2;

  IconValueType get iconValue =>
      value >= 0 ? IconValueType.receive : IconValueType.send;

  String get textInfoCard => value >= 0 ? 'A Receber' : 'A Pagar';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppTheme.colors.backgroundPrimary,
            border: Border.fromBorderSide(
                BorderSide(color: AppTheme.colors.border))),
        padding: EdgeInsets.all(16),
        width: 156,
        height: 168,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconValueWidget(
              type: iconValue,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textInfoCard,
                  style: AppTheme.textStyles.infoCard,
                ),
                SizedBox(
                  height: 4,
                ),
                if (isLoading) ...[
                  LoadingWidget(size: Size(98, 24))
                ] else ...[
                  Text(
                    "R\$ $value",
                    style: textStyle,
                  ),
                ]
              ],
            )
          ],
        ),
      ),
    ]);
  }
}
