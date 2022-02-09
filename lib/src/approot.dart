import 'package:block/blocks/counter_cubit.dart';
import 'package:block/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context)=>CounterCubit()),
      ],
      child: MaterialApp(
        home: HomeView(),
      ),
    );
  }
}
