import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_daily_life/shared/utils/utils.dart';

class BlocObserverApp extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log.i('Transition: $transition');
  }
}