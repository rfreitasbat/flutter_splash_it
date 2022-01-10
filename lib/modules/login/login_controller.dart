import 'package:mobx/mobx.dart' as mobx;
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with mobx.Store {
  final LoginService service;

  _LoginControllerBase({required this.service});

  @mobx.observable
  LoginState state = LoginStateEmpty();

  @mobx.action
  Future<void> googleSignIn() async {
    try {
      state = LoginStateLoading();
      final user = await service.googleSifnIn();
      state = LoginStateSuccess(user: user);
    } catch (error) {
      state = LoginStateFailure(massage: error.toString());
    }
  }
}
