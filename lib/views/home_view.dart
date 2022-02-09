import 'dart:developer';

import 'package:block/blocks/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeView extends StatefulWidget {

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
 //  int counter=0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(
        listener:(context,state){},

           builder: (context,state){
          var cubit=CounterCubit.get(context);
          return  Scaffold(
              body:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(cubit.counter.toString()),
             TextButton(onPressed: (){
               cubit.AddNumber();
             //setState(() {
             //counter++;
             //});
             }, child:Text("add")),
             TextButton(onPressed: (){
               cubit.MinusNumber();
             //setState(() {
             //counter--;
             //});
             }, child:Text("minus")),
             ]
             ));

           }
         );
           }}

