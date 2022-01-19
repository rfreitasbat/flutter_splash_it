import 'package:mobx/mobx.dart';
import 'package:split_it/shared/repositories/firebase_repository.dart';
part 'step_two_controller.g.dart';

class StepTwoController = _StepTwoControllerBase with _$StepTwoController;

abstract class _StepTwoControllerBase with Store {
  final repository = FirebaseRepository();

  @observable
  List<Map<String, dynamic>> _friends = [];

  @observable
  List<Map<String, dynamic>> _selectedFriends = [];

  List<Map<String, dynamic>> get selectedFriends => _selectedFriends;

  @observable
  String search = "";

  @action
  void onChange(String value) {
    search = value;
  }

  @action
  void addFriend(Map<String, dynamic> friend) {
    final list = _selectedFriends;
    list.add(friend);
    _selectedFriends = List.from(list);
  }

  @action
  void removeFriend(Map<String, dynamic> friend) {
    final list = _selectedFriends;
    list.remove(friend);
    _selectedFriends = List.from(list);
  }

  @computed
  List<Map<String, dynamic>> get items {
    if (search.isEmpty) {
      return _friends;
    } else {
      final filteredList = _friends
          .where((element) => element['name']
              .toString()
              .toLowerCase()
              .contains(search.toLowerCase()))
          .toList();
      return filteredList;
    }
  }

  @action
  Future<void> getFriends() async {
    final response = await this.repository.get('/friends');
    _friends = response;
  }
}
