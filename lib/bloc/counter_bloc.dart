import 'package:bloc_263/bloc/counter_event.dart';
import 'package:bloc_263/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc() : super(CounterState(count: 0)){

    ///events

    on<IncrementEvent>((event, emit){
      emit(CounterState(count: state.count+event.value));
    });

    on<DecrementEvent>((event, emit){
      if(state.count>0){
      emit(CounterState(count: state.count-1));
      }
    });



  }
}