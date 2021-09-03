import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<DashBoardModel> getDashBoard() async {
    await Future.delayed(Duration(seconds: 2));
    return DashBoardModel(send: 100, receive: 30);
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      EventModel(
          created: DateTime.now(), title: "Churrasco", value: 526, people: 5),
      EventModel(
          created: DateTime.now(),
          title: "Churrasco",
          value: -300.05,
          people: 5),
      EventModel(
          created: DateTime.now(), title: "Churrasco", value: -526, people: 5),
      EventModel(
          created: DateTime.now(), title: "Churrasco", value: 526, people: 5),
      EventModel(
          created: DateTime.now(), title: "Churrasco", value: -526, people: 5),
      EventModel(
          created: DateTime.now(), title: "Churrasco", value: 526, people: 5),
      EventModel(
          created: DateTime.now(),
          title: "Churrasco",
          value: -300.05,
          people: 5),
      EventModel(
          created: DateTime.now(), title: "Churrasco", value: -526, people: 5),
      EventModel(
          created: DateTime.now(), title: "Churrasco", value: 526, people: 5),
      EventModel(
          created: DateTime.now(), title: "Churrasco", value: -526, people: 5),
    ];
  }
}
