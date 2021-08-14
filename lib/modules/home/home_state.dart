import 'package:split_it/shared/models/event_model.dart';

abstract class HomeState {}

class HomeStateEmpty extends HomeState {}

class HomeStateLoading extends HomeState {}

class HomeStateFailure extends HomeState {
  final String massage;
  HomeStateFailure({required this.massage});
}

class HomeStateSuccess extends HomeState {
  List<EventModel> events;
  HomeStateSuccess({required this.events});
}
