import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_1/screens/homePage.dart';
import 'package:news_app_1/screens/splash/splash.dart';
import 'base/Bloc/BlocObserver.dart';
import 'base/Bloc/BlocProviders.dart';
import 'my_info/base/Injection/Locator.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await setupLocator();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: BlocProviders.providers(context),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:SplashScreen(),
      ),
    );
  }
}
