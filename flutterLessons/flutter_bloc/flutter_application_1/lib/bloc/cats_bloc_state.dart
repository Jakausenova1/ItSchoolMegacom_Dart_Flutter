// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cats_bloc_bloc.dart';

@immutable
abstract class CatsBlocState {}

class CatsBlocInitial extends CatsBlocState {}

class CatsBlocSucces extends CatsBlocState {
  final String? image;
  CatsBlocSucces({
    required this.image,
  });
}

class CatsBlocError extends CatsBlocState {}
