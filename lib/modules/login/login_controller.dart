import 'package:mobx/mobx.dart' as mobx;
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';

class LoginController {
  final _state = mobx.Observable<LoginState>(LoginStateEmpty());
  LoginState get state => _state.value;
  set state(LoginState state) => _state.value = state;

  final LoginService service;
  final _actionController = mobx.ActionController();

  LoginController({required this.service});

  Future<void> googleSignIn() async {
    _actionController.startAction(name: "LoginController.googleSignIn");
    final beginningTime = DateTime.now();
    try {
      state = LoginStateLoading();
      final user = await service.googleSifnIn();
      state = LoginStateSuccess(user: user);
    } catch (error) {
      state = LoginStateFailure(massage: error.toString());
    }
    _actionController.endAction(mobx.ActionRunInfo(
      name: "LoginController.googleSignIn",
      startTime: beginningTime,
    ));
  }
}
