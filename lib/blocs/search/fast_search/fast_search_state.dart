import 'package:customer_app/models/models.dart';
import 'package:customer_app/models/normal_search.dart';
import 'package:equatable/equatable.dart';

class FastSearchState extends Equatable {
  final SearchIn searchIn;
  final CarClass carClass;
  final ShowType showType;
  // FastSearchState({this.searchIn, this.carClass, this.showType});

  const FastSearchState({this.searchIn, this.carClass, this.showType});

  factory FastSearchState.initial() {
    return FastSearchState(
        searchIn: SearchIn.external_branch,
        carClass: CarClass.family,
        showType: ShowType.list);
  }

  FastSearchState copyWith(
      {SearchIn searchIn, CarClass carClass, ShowType showType}) {
    return FastSearchState(
        searchIn: searchIn ?? this.searchIn,
        carClass: carClass ?? this.carClass,
        showType: showType ?? this.showType);
  }

  @override
  List<Object> get props => [searchIn, carClass, showType];

  @override
  String toString() {
    return '''FastSearchState {
      searchIn: $searchIn,
      carClass: $carClass,
      showType: $showType
    }
    ''';
  }
}
