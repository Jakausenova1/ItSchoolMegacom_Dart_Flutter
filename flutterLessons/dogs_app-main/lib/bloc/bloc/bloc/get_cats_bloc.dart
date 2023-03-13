import 'package:bloc/bloc.dart';
import 'package:dogs/models/cats_model.dart';
import 'package:dogs/repo/get_cats_repo.dart';
import 'package:meta/meta.dart';

part 'get_cats_event.dart';
part 'get_cats_state.dart';

class GetCatsBloc extends Bloc<GetCatsEvent, GetCatsState> {
  GetCatsBloc({required this.repo}) : super(GetCatsInitial()) {
    on<GetCatsEventData>((event, emit) async {
      try {
        emit(
          GetCatsSuccess(
            model: await repo.getCatsData(),
          ),
        );
      } catch (e) {
        emit(GetCatsError());
      }
    });
  }
  final GetCatsRepo repo;
}
