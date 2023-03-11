part of 'get_dogs_bloc.dart';

@immutable
abstract class DataEvent {}

class GetDataEvent extends DataEvent {
  final int count;
  GetDataEvent({required this.count});
}
