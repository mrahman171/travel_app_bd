import 'package:bloc/bloc.dart';
import 'package:travelapptest/Services/data_services.dart';
import 'package:travelapptest/cubit/app_cubit_states.dart';
import 'package:travelapptest/model/data_model.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }

  goMenu() {
    emit(WelcomeState());
  }
}
