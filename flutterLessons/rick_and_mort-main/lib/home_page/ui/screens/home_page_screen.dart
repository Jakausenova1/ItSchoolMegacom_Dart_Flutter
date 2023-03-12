import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:rick_and_morty/home_page/cubit/get_character_cubit.dart';

import '../widgets/user_container.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final scrollController = ScrollController();
  String nextPage = '';
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.offset >=
              scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange) {
        BlocProvider.of<GetCharacterCubit>(context).nextPage(nextPage);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GetCharacterCubit>(context).getCharecter('');
    bool _onEditing = true;
    String _code = '';
    // String nextPage = '';
    String previusPage = '';
    String defaultImage =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvsR0DsIbpVZojO0oLDL0ULtzowuzr8FbHwQ&usqp=CAU';
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            VerificationCode(
              textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
              keyboardType: TextInputType.number,
              underlineColor: Colors.amber,
              length: 4,
              cursorColor: Colors.blue,
              clearAll: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'clear all',
                  style: TextStyle(
                      fontSize: 14.0,
                      decoration: TextDecoration.underline,
                      color: Colors.blue[700]),
                ),
              ),
              onCompleted: (String value) {
                setState(() {
                  _code = value;
                });
              },
              onEditing: (bool value) {
                setState(() {
                  _onEditing = value;
                });
                if (!_onEditing) FocusScope.of(context).unfocus();
              },
            ),
            TextField(
              onChanged: (val) {
                BlocProvider.of<GetCharacterCubit>(context).getCharecter(val);
              },
              decoration: const InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: BlocBuilder<GetCharacterCubit, GetCharacterState>(
                builder: (context, state) {
                  if (state is GetCharacterSuccess) {
                    if (state.isSearch && scrollController.hasClients) {
                      scrollController.jumpTo(0);
                    }
                    nextPage = state.model.info?.next ??
                        'https://rickandmortyapi.com/api/character/?page=${state.model.info?.pages}';
                    previusPage = state.model.info?.prev ??
                        'https://rickandmortyapi.com/api/character/?page=1';
                    final model = state.model.results;
                    return ListView.builder(
                      controller: scrollController,
                      shrinkWrap: true,
                      itemCount: state.model.results?.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: index + 1 == model?.length
                            ? const SizedBox(
                                width: double.infinity,
                                height: 50,
                                child:
                                    Center(child: CircularProgressIndicator()),
                              )
                            : UserContainer(
                                id: '${model?[index].id}',
                                image: model?[index].image ?? defaultImage,
                                name: model?[index].name ?? '',
                                species: model?[index].species ?? '',
                                gender: model?[index].gender ?? '',
                                status: model?[index].status ?? '',
                              ),
                      ),
                    );
                  }

                  if (state is LoadingState) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  }
                  if (state is GetCharacterError) {
                    return Center(
                      child: Text(state.errorText1),
                    );
                  }

                  return const Center(
                    child: Text('State not valid'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
