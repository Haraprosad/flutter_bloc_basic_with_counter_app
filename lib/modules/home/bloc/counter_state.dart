part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int counterValue;
  const CounterState({required this.counterValue});

  @override
  List<Object> get props => [counterValue];

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'counterValue': counterValue});
  
    return result;
  }

  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(
      counterValue: map['counterValue']?.toInt() ?? 0,
    );
  }

}

class CounterInitial extends CounterState {
  const CounterInitial() : super(counterValue: 0);
}

class CounterIncrementState extends CounterState {
  const CounterIncrementState({required int increasedValue}) : super(counterValue: increasedValue);
}

class CounterDecrementState extends CounterState {
  const CounterDecrementState({required int decreasedValue}) : super(counterValue: decreasedValue);
}

