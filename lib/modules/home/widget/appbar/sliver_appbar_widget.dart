import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widget/appbar/app_bar_widget.dart';
import 'package:split_it/modules/home/widget/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:split_it/modules/login/model/user_model.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/theme/app_theme.dart';

import '../../home_controller.dart';
import '../../home_state.dart';
import '../event_tile_widget.dart';

class SliverAppBarWidget extends PreferredSize {
  final UserModel user;
  final VoidCallback onTapAddButton;
  late HomeController controller;

  SliverAppBarWidget({
    required this.user,
    required this.onTapAddButton,
    required this.controller,
  }) : super(
          preferredSize: Size.fromHeight(302),
          child: NestedScrollView(
            headerSliverBuilder: (context, condition) {
              return [
                SliverPadding(
                  padding: EdgeInsets.only(top: 18),
                  sliver: SliverAppBar(
                    backgroundColor: AppTheme.colors.backgroudSplash,
                    expandedHeight: 300,
                    floating: false,
                    pinned: true,
                    title: AppBarWidget(
                        user: user, onTapAddButton: onTapAddButton),
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: FlexibleSpaceBar(background: BottomAppBarWidget()),
                    ),
                  ),
                ),
              ];
            },
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    if (controller.state is HomeStateLoading) ...[
                      ...List.generate(
                          1,
                          (index) => EventTileWidget(
                              isLoading: true, model: EventModel()))
                    ] else if (controller.state is HomeStateSuccess) ...[
                      ...(controller.state as HomeStateSuccess)
                          .events
                          .map(
                            (e) => EventTileWidget(model: e),
                          )
                          .toList()
                    ] else if (controller.state is HomeStateFailure) ...[
                      Text((controller.state as HomeStateFailure).massage)
                    ] else ...[
                      Container()
                    ]
                  ],
                ),
              ),
            ),
          ),
        );
}
