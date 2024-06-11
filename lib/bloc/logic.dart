import 'package:bloc/bloc.dart';
import 'package:counter/bloc/counter_state.dart';

class CounterLogic extends Cubit<CounterState>{
  CounterLogic() : super(InitCounter());
  int counter=0;

  void plus(){
    counter++;
    emit(PlusCounter());
  }
  void minus(){
    counter--;
    emit(MinusConter());
  }
  void reset(){
    counter=0;
    emit(ResetCounter());
  }
}