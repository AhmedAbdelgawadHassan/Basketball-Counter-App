// ignore: file_names
abstract class CounterState {}
// ignore: camel_case_types
class initialState extends CounterState {}      // intail state must be determined in All Cubits 

class CounterAIncrement extends CounterState {}

class CounterBIncrement extends CounterState {}

class CounterReset extends CounterState {}
