part of 'technology_cubit.dart';

abstract class TechnologyState extends Equatable {
  final HomeModel homeModel;
  final bool change;
  const TechnologyState(this.homeModel, this.change);
}

class TechnologyInitial extends TechnologyState {
  TechnologyInitial() : super(null, false);

  @override
  List<Object> get props => [];
}

class TechnologyUpdate extends TechnologyState{
  TechnologyUpdate(HomeModel homeModel, bool change) : super(homeModel, change);

  @override
  List<Object> get props => [homeModel,change];

}
