import 'package:bloc/bloc.dart';
import 'package:customer_app/blocs/tab/tab.dart';
import 'package:customer_app/models/models.dart';

class TabBloc extends Bloc<TabEvent, AppTab> {
  static TabBloc _tabBloc;
  static TabBloc getInstance() {
    if (_tabBloc == null) {
      _tabBloc = TabBloc();
    }
    return _tabBloc;
  }

  TabBloc();
  @override
  AppTab get initialState => AppTab.search;

  @override
  Stream<AppTab> mapEventToState(
    TabEvent event,
  ) async* {
    if (event is UpdateTab) {
      yield event.tab;
    }
  }
}
