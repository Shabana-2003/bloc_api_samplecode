
import 'package:bloc_app/model.dart';
import 'package:equatable/equatable.dart';


abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final ModelData modelData;// activity and type
  const HomeLoaded(this.modelData);
}

class HomeError extends HomeState {
  final String? message;
  const HomeError(this.message);
}