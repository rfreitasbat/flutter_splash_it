import 'package:split_it/modules/home/models/dashboard_model.dart';

abstract class AppBarState {}

class AppBarStateEmpty extends AppBarState {}

class AppBarStateLoading extends AppBarState {}

class AppBarStateFailure extends AppBarState {
  final String massage;
  AppBarStateFailure({required this.massage});
}

class AppBarStateSuccess extends AppBarState {
  DashBoardModel dashboarde;
  AppBarStateSuccess({required this.dashboarde});
}
