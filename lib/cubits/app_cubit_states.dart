import 'package:equatable/equatable.dart';
import 'package:travelapptest/model/DataModel.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class LoadingState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadedState extends CubitStates {
  final places;
  LoadedState(this.places);
  @override
  // TODO: implement props
  List<Object> get props => [places];
}

class DetailState extends CubitStates {
  int index;
  DataModel state;
  DetailState(this.index, this.state);
  @override
  // TODO: implement props
  List<Object> get props => [index];
}

class GoHomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}
