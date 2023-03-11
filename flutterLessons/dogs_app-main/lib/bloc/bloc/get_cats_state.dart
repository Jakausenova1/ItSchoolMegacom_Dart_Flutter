part of 'get_cats_bloc.dart';

@immutable
abstract class GetCatsState {}

class GetCatsInitial extends GetCatsState {}

class GetCatsSuccess extends GetCatsState {
  final CatsModel modelCats;
  GetCatsSuccess({required this.modelCats});
}

class GetCatsError extends GetCatsState {}
