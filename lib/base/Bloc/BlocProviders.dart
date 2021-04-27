import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_1/screens/technology/cubits/technology_cubit.dart';



class BlocProviders {
  static List<BlocProvider> providers(BuildContext context) => [

    BlocProvider<TechnologyCubit>(
      create: (context)=>TechnologyCubit(),

    )
      ];

}
