import 'package:mobx/mobx.dart';
import 'package:split_it/shared/repositories/firebase_repository.dart';
part 'step_two_controller.g.dart';

class StepTwoController = _StepTwoControllerBase with _$StepTwoController;

abstract class _StepTwoControllerBase with Store {
  final repository = FirebaseRepository();

  @observable
  List<Map<String, dynamic>> frinds = [];

  @action
  onChange(String value) {
    getFrinds(value);
  }

  @action
  Future<void> getFrinds(String search) async {
    if (search.isNotEmpty) {
      final response = await this
          .repository
          .where(key: "name", value: search, collection: "/friends");
      frinds = response;
    } else {
      frinds = [];
    }
  }
}
