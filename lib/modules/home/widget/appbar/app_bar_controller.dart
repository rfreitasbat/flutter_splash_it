import 'package:mobx/mobx.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/repositories/home_repository_mock.dart';
import 'package:split_it/modules/home/widget/appbar/app_bar_state.dart';

part 'app_bar_controller.g.dart';

class AppBarController = _AppBarControllerBase with _$AppBarController;

abstract class _AppBarControllerBase with Store {
  late HomeRepository repository;

  _AppBarControllerBase({HomeRepository? repository}) {
    this.repository = repository ?? HomeRepositoryMock();
  }

  @observable
  AppBarState state = AppBarStateEmpty();

  @action
  getDeshBoard() async {
    state = AppBarStateLoading();
    try {
      final response = await repository.getDashBoard();
      state = AppBarStateSuccess(dashboarde: response);
    } catch (e) {
      state = AppBarStateFailure(massage: e.toString());
    }
  }
}
