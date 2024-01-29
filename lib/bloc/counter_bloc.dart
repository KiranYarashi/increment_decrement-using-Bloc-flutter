import 'package:bloc_project/bloc/counter_event.dart';
import 'package:bloc_project/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitialState()) {
    on<CounterIncrementEvent>((event, emit) {
      emit(CounterIncrementState(increasedCounter: state.counter + 1));
      

    });

    on<CounterDecrementEvent>((event, emit) {
      emit(CounterDecrementState(decreasedCounter: state.counter - 1));
    });
  }
}
