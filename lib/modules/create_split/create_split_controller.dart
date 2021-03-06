import 'package:mobx/mobx.dart';
import 'package:split_it/shared/models/friend_model.dart';

part 'create_split_controller.g.dart';

class CreateSplitController = _CreateSplitController
    with _$CreateSplitController;

abstract class _CreateSplitController with Store {
  @observable
  int currentPage = 0;

  @action
  void nextPage() {
    if (currentPage < 2) {
      currentPage++;
    }
  }

  @action
  void backPage() {
    if (currentPage > 0) {
      currentPage--;
    }
  }

  @observable
  String eventName = "";

  @observable
  List<FriendModel> selectedFriends = <FriendModel>[];

  @computed
  bool get enableNavigateButton {
    if (eventName.isNotEmpty && currentPage == 0) {
      return true;
    } else if (selectedFriends.isNotEmpty && currentPage == 1) {
      return true;
    } else {
      return false;
    }
  }

  @action
  void setSelectedFriends(List<FriendModel> list) {
    selectedFriends = list;
  }

  @action
  void setEventName(String name) {
    eventName = name;
  }
}
