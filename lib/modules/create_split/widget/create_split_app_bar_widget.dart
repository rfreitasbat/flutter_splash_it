import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitAppBarWidget extends PreferredSize {
  final int actualPage;
  final int size;
  final VoidCallback onTapBackButton;
  CreateSplitAppBarWidget(
      {required this.onTapBackButton,
      required this.actualPage,
      required this.size})
      : super(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(
            top: true,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: actualPage > 0
                      ? IconButton(
                          icon: Icon(Icons.arrow_back),
                          color: AppTheme.colors.backButton,
                          onPressed: onTapBackButton,
                        )
                      : Container(),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text.rich(
                    TextSpan(
                      text: "0${actualPage + 1} ",
                      style: AppTheme.textStyles.stepperIndicatorPrimary,
                      children: [
                        TextSpan(
                            text: "- 0$size",
                            style:
                                AppTheme.textStyles.stepperIndicatorSecondary)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
}
