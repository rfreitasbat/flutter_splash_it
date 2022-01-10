part of 'login_controller.dart';

mixin _$LoginController on _LoginControllerBase, mobx.Store {
  final _$statusAtom = mobx.Atom(name: '_LoginControllerBase.state');

  @override
  LoginState get state {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.state;
  }

  @override
  set state(LoginState value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.state = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom}_set');
  }

  final _$googleSignInAsycAction = mobx.AsyncAction("LoginController");

  @override
  Future<void> googleSignIn() {
    return _$googleSignInAsycAction.run(() => super.googleSignIn());
  }
}
