import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc/events/counter_events.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(int initialState) : super(initialState);


  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.add:
        yield state+1;
        break;
      case CounterEvent.remove:
        yield state-1;
        break;

    }
  }
}