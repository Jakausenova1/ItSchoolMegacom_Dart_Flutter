import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../cats_repo.dart';
part 'cats_bloc_event.dart';
part 'cats_bloc_state.dart';

class CatsBlocBloc extends Bloc<CatsBlocEvent, CatsBlocState> {
  CatsBlocBloc({required this.repo}) : super(CatsBlocInitial()) {
    on<PressButtonEvent>(
      (event, emit) async {
        try {
          final image = await repo.getCatsUrl();
          emit(CatsBlocSucces(image: image));
        } catch (e) {
          emit(CatsBlocError());
        }
      },
    );
  }
  final CatsRepo repo;
}
