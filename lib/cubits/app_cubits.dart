import 'package:bloc/bloc.dart';
import 'package:travelapptest/cubits/app_cubit_states.dart';
import 'package:travelapptest/services/DataServices.dart';

class AppCubit extends Cubit<CubitStates> {
  AppCubit({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }

  final DataServices data;
  late final places;
  Future GetData() async {
    try {
      emit(LoadingState());
      places = await data.getinfo();
      emit(LoadedState(places));
    } catch (e) {
      print(e);
    }
  }

  void DetailedState(int index) {
    emit(DetailState(index, places));
  }

  void GoHome() {
    emit(LoadedState(places));
  }
}
