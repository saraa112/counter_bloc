part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterAdd extends CounterState {}
class CounterMinus extends CounterState {}
