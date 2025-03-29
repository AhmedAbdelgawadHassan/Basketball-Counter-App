import 'package:basketball_app/Cubits/Counter_Cubit.dart';
import 'package:basketball_app/widgets/AddingContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamBColumn extends StatelessWidget {
  const TeamBColumn({super.key, required this.teamBpoints});
  final int teamBpoints ;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.4,
      height: 450,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children:  [
           const Text(
            "Team B",
            style: TextStyle(
              fontSize: 30, 
              fontWeight: FontWeight.w700),
          ),
         const  Spacer(),
         SizedBox(
          height: 180,
          child: FittedBox(
            child: Text("${BlocProvider.of<CounterCubit>(context).teamBpoints}", style: const TextStyle(
              fontSize:120,
              fontWeight: FontWeight.w600,
              shadows: [
                Shadow(
                  color: Colors.tealAccent,
                  offset: Offset(5, 5),
                )
              ]
            )),
          ),
        ),
         const  Spacer(flex:4,),
          Addingcontainer(text: "Add 1 point",onpress: (){
            BlocProvider.of<CounterCubit>(context).teamIncrement(team: "B", ButtonNumber: 1);
          },),
         const Spacer(flex: 2,),
          Addingcontainer(text: "Add 2 points",onpress: (){
            BlocProvider.of<CounterCubit>(context).teamIncrement(team: "B", ButtonNumber: 2);
          },),
          const Spacer(flex: 2,),
          Addingcontainer(text: "Add 3 points",onpress: (){
            BlocProvider.of<CounterCubit>(context).teamIncrement(team: "B", ButtonNumber: 3);
          },),
        ],
      ),
    );
  }
}
