// AppBAr feita pelo curso
import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widget/add_button_widget.dart';
import 'package:split_it/modules/login/model/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  final VoidCallback onTapAddButton;
  AppBarWidget({required this.user, required this.onTapAddButton})
      : super(
          preferredSize: Size.fromHeight(302),
          child: ListTile(
            leading: ClipRRect(
              child: Image.network(user.photoUrl!),
              borderRadius: BorderRadius.circular(10),
            ),
            title: Text(
              user.name!,
              style: AppTheme.textStyles.appBar,
            ),
            trailing: AddButtonWidget(
              onTap: onTapAddButton,
            ),
          ),
        );
}
