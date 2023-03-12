part of 'get_character_cubit.dart';

abstract class GetCharacterState {}

class GetCharacterInitial extends GetCharacterState {}

class GetCharacterError extends GetCharacterState {
  String errorText1;
  GetCharacterError({required this.errorText1});
}

class LoadingState extends GetCharacterState {}

class GetCharacterSuccess extends GetCharacterState {
  final CharacterModel model;
  final bool isSearch;
  GetCharacterSuccess({required this.model, this.isSearch = false});
}
