import 'package:customer_app/models/normal_search.dart';
import 'package:equatable/equatable.dart';

class NormalSearchState extends Equatable {
  final SearchIn searchIn;
  final WindowType windowType;
  final LimeType limeType;
  final OutsideOfKingdom outsideOfKingdom;
  final ShowType showType;

  const NormalSearchState(
      {this.searchIn,
      this.windowType,
      this.limeType,
      this.outsideOfKingdom,
      this.showType});

  factory NormalSearchState.initial() {
    return NormalSearchState(
        searchIn: SearchIn.external_branch,
        windowType: WindowType.automatic,
        limeType: LimeType.automatic,
        outsideOfKingdom: OutsideOfKingdom.automatic,
        showType: ShowType.list);
  }

  NormalSearchState copyWith(
      {SearchIn searchIn,
      WindowType windowType,
      LimeType limeType,
      OutsideOfKingdom outsideOfKingdom,
      ShowType showType}) {
    return NormalSearchState(
        searchIn: searchIn ?? this.searchIn,
        windowType: windowType ?? this.windowType,
        limeType: limeType ?? this.limeType,
        outsideOfKingdom: outsideOfKingdom ?? this.outsideOfKingdom,
        showType: showType ?? this.showType);
  }

  @override
  List<Object> get props =>
      [searchIn, windowType, limeType, outsideOfKingdom, showType];

  @override
  String toString() {
    return '''NormalSearchState {
      searchIn: $searchIn,
      windwoType: $windowType,
      limeType: $limeType,
      outsideOfKingdom: $outsideOfKingdom,
      showType: $showType
    }
    ''';
  }
}
