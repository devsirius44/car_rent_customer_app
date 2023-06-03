import 'package:bloc/bloc.dart';
import 'package:customer_app/models/models.dart';

import 'search_event.dart';

class SearchTypeBloc extends Bloc<SearchTypeEvent, SearchType> {
  // static SearchTypeBloc _searchTypeBloc;

  // static SearchTypeBloc getInstance() {
  //   if (_searchTypeBloc == null) {
  //     _searchTypeBloc = SearchTypeBloc();
  //   }
  //   return _searchTypeBloc;
  // }

  SearchTypeBloc();

  @override
  SearchType get initialState => SearchType.normal;

  @override
  Stream<SearchType> mapEventToState(
    SearchTypeEvent event,
  ) async* {
    if (event is UpdateSearchType) {
      yield event.searchType;
    }
  }
}
