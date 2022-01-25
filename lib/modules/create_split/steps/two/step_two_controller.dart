import 'package:mobx/mobx.dart';
import 'package:split_it/shared/models/friend_model.dart';
import 'package:split_it/shared/repositories/firebase_repository.dart';

import '../../create_split_controller.dart';
part 'step_two_controller.g.dart';

class StepTwoController = _StepTwoControllerBase with _$StepTwoController;

abstract class _StepTwoControllerBase with Store {
  final CreateSplitController controller;
  final repository = FirebaseRepository();

  _StepTwoControllerBase({required this.controller}) {
    autorun((_) {
      controller.setSelectedFriends(_selectedFriends);
    });
  }

  @observable
  List<FriendModel> _friends = [];

  @observable
  ObservableList<FriendModel> _selectedFriends = ObservableList.of([]);

  List<FriendModel> get selectedFriends => _selectedFriends;

  @observable
  String search = "";

  @action
  void onChange(String value) {
    search = value;
  }

  @action
  void addFriend(FriendModel friend) {
    _selectedFriends.add(friend);
  }

  @action
  void removeFriend(FriendModel friend) {
    _selectedFriends.remove(friend);
  }

  @computed
  List<FriendModel> get items {
    if (_selectedFriends.isNotEmpty) {
      final filteredList = _friends.where((element) {
        final validateName = element.name
            .toString()
            .toLowerCase()
            .contains(search.toLowerCase());
        final notExistisSelectedFriend = !_selectedFriends.contains(element);
        return validateName && notExistisSelectedFriend;
      }).toList();
      return filteredList;
    }

    if (search.isEmpty) {
      return _friends;
    } else {
      final filteredList = _friends
          .where((element) => element.name
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
    _friends = response.map((e) => FriendModel.fromMap(e)).toList();
  }
}
