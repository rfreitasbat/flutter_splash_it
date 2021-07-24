import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/model/user_model.dart';

class LoginServiceMock extends Mock implements LoginService {}

void main() {
  late LoginController controller;
  late LoginService service;
  setUp(() {
    service = LoginServiceMock();
    controller = LoginController(service: service, onUpdate: () {});
  });

  test("Testando o Google SignIn retornando Sucesso", () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    final states = <LoginState>[];
    controller.Listen((state) => states.add(state));
    when(service.googleSifnIn)
        .thenAnswer((_) async => UserModel(email: "Email", id: "ÏD"));
    await controller.googleSignIn();
    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateSuccess>());
    expect(states.length, 2);
  });

  test("Testando o Google SignIn retornando Sucesso", () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    final states = <LoginState>[];
    controller.Listen((state) => states.add(state));
    when(service.googleSifnIn).thenThrow("Deu Erro");
    await controller.googleSignIn();
    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateFailure>());
    expect((states[1] as LoginStateFailure).massage, "Deu Erro");
    expect(states.length, 2);
  });
}
