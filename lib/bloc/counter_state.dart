abstract class CounterState {
  int counter = 0;
  CounterState({required this.counter});
}


class CounterInitialState extends CounterState {
  CounterInitialState() : super(counter: 0);
}

class CounterIncrementState extends CounterState {
  CounterIncrementState( {required int increasedCounter})
   : super(counter: increasedCounter);
}

class CounterDecrementState extends CounterState {
  CounterDecrementState( {required int decreasedCounter})
   : super(counter: decreasedCounter);
}