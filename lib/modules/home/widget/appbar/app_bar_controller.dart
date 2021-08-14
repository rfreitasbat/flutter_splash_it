import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/repositories/home_repository_mock.dart';
import 'package:split_it/modules/home/widget/appbar/app_bar_state.dart';

class AppBarController {
  late HomeRepository repository;

  AppBarState state = AppBarStateEmpty();
  Function(AppBarState state)? onListen;

  AppBarController({HomeRepository? repository}) {
    this.repository = repository ?? HomeRepositoryMock();
  }

  getDeshBoard() async {
    upgate(AppBarStateLoading());
    try {
      final response = await repository.getDashBoard();
      upgate(AppBarStateSuccess(dashboarde: response));
    } catch (e) {
      upgate(AppBarStateFailure(massage: e.toString()));
    }
  }

  void Listen(Function(AppBarState state) onChange) {
    onListen = onChange;
  }

  void upgate(AppBarState state) {
    this.state = state;
    if (onListen != null) {
      onListen!(state);
    }
  }
}
