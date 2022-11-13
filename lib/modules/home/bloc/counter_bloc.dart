import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncrementEvent>((event, emit) {
      emit(CounterIncrementState(increasedValue: state.counterValue + 1));
    });

    on<CounterDecrementEvent>((event, emit) {
      emit(CounterDecrementState(decreasedValue: state.counterValue - 1));
    });
    
  }
}
