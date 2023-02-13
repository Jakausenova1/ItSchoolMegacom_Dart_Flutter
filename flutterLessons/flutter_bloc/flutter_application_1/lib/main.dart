import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/cats_bloc_bloc.dart';
import 'package:flutter_application_1/cats.dart';
import 'package:flutter_application_1/cats_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dio_settings.dart';

void main() {
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
              CatsRepo(dio: RepositoryProvider.of<DioSettings>(context).dio),
        ),
      ],
      child: BlocProvider(
        create: (context) => CatsBlocBloc(
          repo: RepositoryProvider.of<CatsRepo>(context),
        ),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CatsScreen(),
        ),
      ),
    );
  }
}
