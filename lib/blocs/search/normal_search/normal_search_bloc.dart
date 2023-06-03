import 'package:bloc/bloc.dart';

import 'index.dart';

class NormalSearchBloc extends Bloc<NormalSearchEvent, NormalSearchState> {
  // static NormalSearchBloc normalSearchBloc;
  // static NormalSearchBloc getInstance() {
  //   if (normalSearchBloc == null) {
  //     normalSearchBloc = NormalSearchBloc();
  //   }
  //   return normalSearchBloc;
  // }

  NormalSearchBloc();
  @override
  NormalSearchState get initialState => NormalSearchState.initial();

  @override
  void onTransition(
      Transition<NormalSearchEvent, NormalSearchState> transition) {
    super.onTransition(transition);
    print(transition);
  }

  @override
  Stream<NormalSearchState> mapEventToState(
    NormalSearchEvent event,
  ) async* {
    if (event is SearchInChanged) {
      yield state.copyWith(searchIn: event.searchIn);
    }
    if (event is WindowTypeChanged) {
      yield state.copyWith(windowType: event.windwoType);
    }
    if (event is LimeTypeChanged) {
      yield state.copyWith(limeType: event.limeType);
    }
    if (event is OutSideOfKingdowChanged) {
      yield state.copyWith(outsideOfKingdom: event.outSideOfKingdom);
    }
    if (event is ShowTypeChanged) {
      print("okok");
      yield state.copyWith(showType: event.showType);
    }
  }
}
