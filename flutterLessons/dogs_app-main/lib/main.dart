import 'package:dogs/bloc/get_dogs_bloc.dart';
import 'package:dogs/core_data/dio_settings.dart';
import 'package:dogs/repo/get_cats_repo.dart';
import 'package:dogs/repo/get_dogs_repo.dart';
import 'package:dogs/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc/bloc/get_cats_bloc.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DioSettings(),
        ),
        RepositoryProvider(
          create: (context) =>
              GetDogsRepo(dio: RepositoryProvider.of<DioSettings>(context).dio),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GetDogsBloc(
              repo: RepositoryProvider.of<GetDogsRepo>(
                context,
              ),
            ),
          ),
          BlocProvider(
            create: (context) => GetCatsBloc(
              repo: RepositoryProvider.of<GetCatsRepo>(
                context,
              ),
            ),
          ),
        ],
        child: const MaterialApp(
          home: HomePageScreen(),
        ),
      ),
    );
  }
}
