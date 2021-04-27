part of 'newsDetails_imports.dart';
class NewsDetailsData {
  final GenericCubit<HomeModel> detailsCubit=GenericCubit(null);
  onFetchNewsDetails(String category)async{
    var response=await Utils().api().get(
      url: 'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=ed8b5f5615db403594cf4044a1213e8a'
    );
    HomeModel homeModel=HomeModel.fromJson(response.data);
    detailsCubit.onUpdateData(homeModel);
  }
}