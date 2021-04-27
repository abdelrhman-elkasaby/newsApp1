import 'package:get_it/get_it.dart';
import 'package:news_app_1/my_info/services/Network/ApiService.dart';
import 'package:news_app_1/my_info/services/Sql/PrefService.dart';


GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  final prefInstance = await PrefService.getInstance();
  locator.registerSingleton<PrefService>(prefInstance);
  locator.registerLazySingleton(() => ApiService());

}
