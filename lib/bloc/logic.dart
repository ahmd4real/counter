import 'package:bloc/bloc.dart';

import 'package:counter/bloc/stateCounter.dart';

class CounterLogic extends Cubit<CounterState>{
  CounterLogic() : super(initC());
  int c=0;

  void pc(){
    c++;
    emit(pC());
  }
  void mc(){
    c--;
    emit(mC());
  }
  void rc(){
    c=0;
    emit(rC());
  }
}