import 'package:bloc/bloc.dart';

import 'index.dart';

class FastSearchBloc extends Bloc<FastSearchEvent, FastSearchState> {
  // static FastSearchBloc fastSearchBloc;

  // static FastSearchBloc getInstance() {
  //   if (fastSearchBloc == null) {
  //     fastSearchBloc = FastSearchBloc();
  //   }
  //   return fastSearchBloc;
  // }
  FastSearchBloc();

  @override
  FastSearchState get initialState => FastSearchState.initial();

  @override
  void onTransition(Transition<FastSearchEvent, FastSearchState> transition) {
    super.onTransition(transition);
    print(transition);
  }

  @override
  Stream<FastSearchState> mapEventToState(
    FastSearchEvent event,
  ) async* {
    if (event is SearchInChanged) {
      yield state.copyWith(searchIn: event.searchIn);
    }
    if (event is CarClassChanged) {
      yield state.copyWith(carClass: event.carClass);
    }
    if (event is ShowTypeChanged) {
      yield state.copyWith(showType: event.showType);
    }
  }
}
