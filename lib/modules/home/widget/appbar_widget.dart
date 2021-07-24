import 'package:flutter/material.dart';
import 'package:split_it/modules/login/model/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  AppBarWidget({required this.user})
      : super(
          preferredSize: Size.fromHeight(170),
          child: Container(
            decoration: BoxDecoration(color: AppTheme.appBarTheme.background),
            child: SafeArea(
                child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 19,
                      vertical: 35,
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Image.network(
                            user.photoUrl!,
                            width: 67,
                            height: 62,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          user.name.toString(),
                          style: AppTheme.appBarTheme.text,
                        ),
                        SizedBox(width: 17),
                        Expanded(
                          child: Text(
                            user.name!,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                            style: TextStyle(color: Color(0xFF40B28C)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.fromBorderSide(
                              BorderSide(width: 1, color: Color(0xFFFFFFFF)),
                            ),
                          ),
                          width: 50,
                          height: 53,
                          child: Icon(
                            Icons.add,
                            color: Color(0xFFFFFFFF),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )),
          ),
        );
}
