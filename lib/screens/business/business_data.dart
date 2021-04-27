
part of 'business_imports.dart';

class BusinessData{
  final GenericCubit<HomeModel> businessCubit = GenericCubit(null);
  Future<void> onBusinessApiData() async {
    var response = await Utils().api().get(
        url: 'https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=ed8b5f5615db403594cf4044a1213e8a');
    HomeModel homeModel = HomeModel.fromJson(response.data);
    businessCubit.onUpdateData(homeModel);
  }
}