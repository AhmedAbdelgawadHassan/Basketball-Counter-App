import 'package:basketball_app/Cubits/Counter_State.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  int teamApoints = 0;
  int teamBpoints = 0;

  // ignore: avoid_types_as_parameter_names
  CounterCubit(super.initialState);

  // ignore: non_constant_identifier_names
  void teamIncrement({required String team,required int ButtonNumber}) {
   if(team == 'A'){
     teamApoints+=ButtonNumber;
    emit(CounterAIncrement());    // send the state to UI
   }
   else
   {
     teamBpoints+=ButtonNumber;
    emit(CounterBIncrement());   // send the state to UI
   }

  }

  void teamReset()
  {
    teamApoints = 0;
    teamBpoints = 0;
    emit(CounterReset());

  }



}