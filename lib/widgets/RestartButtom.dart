import 'package:basketball_app/Cubits/Counter_Cubit.dart';
import 'package:basketball_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Restartbuttom extends StatelessWidget {
  const Restartbuttom({super.key});
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<CounterCubit>(context).teamReset();
      },
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        alignment: Alignment.center,
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: KprimaryColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const[
            BoxShadow(
              color: Colors.black,
              offset:  Offset(5, 5),
              blurRadius: 10
            )
          ]
        ),
        child: const Text("Restart", 
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),),
      ),
    );
  }
}