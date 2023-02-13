import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/cats_bloc_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatsScreen extends StatelessWidget {
  const CatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            BlocBuilder<CatsBlocBloc, CatsBlocState>(
              builder: (context, state) {
                if (state is CatsBlocSucces) {
                  return Image.network(state.image ?? '');
                }
                if (state is CatsBlocError) {
                  return Image.network(
                      'https://cdn.dribbble.com/users/2594343/screenshots/6537210/404-animation-cat.gif');
                }
                return Image.network(
                    'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_2x1.jpg');
              },
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<CatsBlocBloc>(context).add(PressButtonEvent());
              },
              child: Text('Next'),
            ),
          ]),
        ),
      ),
    );
  }
}
