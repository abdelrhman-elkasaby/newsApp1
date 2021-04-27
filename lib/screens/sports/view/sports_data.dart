part of 'sports_imports.dart';

class SportsData {
  final SportsCubit sportsCubit = SportsCubit();
  Future<void> onSportsApiData() async {
    var response = await Utils().api().get(
        url: 'https://newsapi.org/v2/top-headlines?country=eg&category=sports&apiKey=ed8b5f5615db403594cf4044a1213e8a');
    HomeModel homeModel = HomeModel.fromJson(response.data);
    sportsCubit.getSportsData(homeModel);
  }
}
