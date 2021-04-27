import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app_1/models/homeModel.dart';

part 'technology_state.dart';

class TechnologyCubit extends Cubit<TechnologyState> {
  TechnologyCubit() : super(TechnologyInitial());

  void getTechnologyData(HomeModel homeModel){
    emit(TechnologyUpdate(homeModel,!state.change));
  }
}
