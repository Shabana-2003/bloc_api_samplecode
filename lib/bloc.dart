
import 'package:bloc_app/api_repocitory.dart';
import 'package:bloc_app/bloc_event.dart';
import 'package:bloc_app/bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    final ApiRepository apiRepository = ApiRepository();

    on<GetDataList>((event, emit) async {
      try {
        emit(HomeLoading());
        final data = await apiRepository.fetchCovidList();
        emit(HomeLoaded(data!));
      } on NetworkError {
        emit(const HomeError("Failed to fetch data !!"));
      }
    });
  }
}