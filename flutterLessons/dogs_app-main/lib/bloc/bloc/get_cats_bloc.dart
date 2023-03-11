import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../models/cats_model.dart';
import '../../repo/get_cats_repo.dart';
import '../get_dogs_bloc.dart';

part 'get_cats_state.dart';

class GetCatsBloc extends Bloc<DataEvent, GetCatsState> {
  GetCatsBloc({required this.repo}) : super(GetCatsInitial()) {
    on<GetDataEvent>(
      (event, emit) async {
        try {
          emit(
            GetCatsSuccess(
              modelCats: await repo.getCatsData(
                count: event.count,
              ),
            ),
          );
        } catch (e) {
          emit(GetCatsError());
        }
      },
    );
  }
  final GetCatsRepo repo;
}
