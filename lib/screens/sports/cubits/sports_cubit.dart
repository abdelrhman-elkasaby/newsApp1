import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app_1/models/homeModel.dart';

part 'sports_state.dart';

class SportsCubit extends Cubit<SportsState> {
  SportsCubit() : super(SportsInitial());

  void getSportsData(HomeModel homeModel){
    emit(SportsUpdate(homeModel,!state.change));
  }
}
