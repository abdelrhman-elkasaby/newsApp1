part of 'sports_cubit.dart';

abstract class SportsState extends Equatable {
  final HomeModel homeModel;
  final bool change;
  const SportsState(this.homeModel,this.change);
}

class SportsInitial extends SportsState {
  SportsInitial() : super(null, false);

  @override
  List<Object> get props => [];
}

class SportsUpdate extends SportsState {
  SportsUpdate(HomeModel homeModel, bool change) : super(homeModel, change);


  @override
  List<Object> get props => [homeModel,change];
}
