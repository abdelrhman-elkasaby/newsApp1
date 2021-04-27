part of 'technology_imports.dart';
class TechnologyData {
  Future<void> onTechnologyApiData(BuildContext context) async {
    var response = await Utils().api().get(
        url: 'https://newsapi.org/v2/top-headlines?country=eg&category=technology&apiKey=ed8b5f5615db403594cf4044a1213e8a');
    HomeModel homeModel = HomeModel.fromJson(response.data);
    context.read<TechnologyCubit>().getTechnologyData(homeModel);
  }
}
