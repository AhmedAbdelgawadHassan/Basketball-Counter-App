// ignore_for_file: camel_case_types
import 'package:basketball_app/Cubits/Counter_Cubit.dart';
import 'package:basketball_app/Cubits/Counter_State.dart';
import 'package:basketball_app/views/SplashView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main()
{
  runApp(const BasketBall_Counter_App());
}

class BasketBall_Counter_App extends StatelessWidget {
  const BasketBall_Counter_App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => CounterCubit(initialState()) ,
      child:const  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashView(),
      ),
    );
  }
}