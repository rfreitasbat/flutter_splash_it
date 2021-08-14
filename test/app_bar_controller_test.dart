import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/modules/home/widget/appbar/app_bar_controller.dart';
import 'package:split_it/modules/home/widget/appbar/app_bar_state.dart';

class HomeRepositoryMock extends Mock implements HomeRepository {}

void main() {
  late AppBarController controller;
  late HomeRepository repository;
  setUp(() {
    repository = HomeRepositoryMock();
    controller = AppBarController(repository: repository);
  });

  test("Testando o GetDashBoard - Success", () async {
    expect(controller.state, isInstanceOf<AppBarStateEmpty>());
    final states = <AppBarState>[];
    controller.Listen((state) => states.add(state));
    when(repository.getDashBoard).thenAnswer((_) async => DashBoardModel(
          send: 100,
          receive: 250,
        ));
    await controller.getDeshBoard();
    expect(states[0], isInstanceOf<AppBarStateLoading>());
    expect(states[1], isInstanceOf<AppBarStateSuccess>());
    expect(states.length, 2);
  });

  test("Testando o GetEDashBoard - Failure", () async {
    expect(controller.state, isInstanceOf<AppBarStateEmpty>());
    final states = <AppBarState>[];
    controller.Listen((state) => states.add(state));
    when(repository.getDashBoard).thenThrow("Deu Erro");
    await controller.getDeshBoard();
    expect(states[0], isInstanceOf<AppBarStateLoading>());
    expect(states[1], isInstanceOf<AppBarStateFailure>());
    expect((states[1] as AppBarStateFailure).massage, "Deu Erro");
    expect(states.length, 2);
  });
}
