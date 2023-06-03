import 'package:customer_app/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class NormalSearchEvent extends Equatable {
  const NormalSearchEvent();

  @override
  List<Object> get props => [];
}

class SearchInChanged extends NormalSearchEvent {
  final SearchIn searchIn;

  SearchInChanged({@required this.searchIn});

  @override
  List<Object> get props => [searchIn];
}

class WindowTypeChanged extends NormalSearchEvent {
  final WindowType windwoType;

  WindowTypeChanged({this.windwoType});

  @override
  List<Object> get props => [WindowType];
}

class LimeTypeChanged extends NormalSearchEvent {
  final LimeType limeType;

  LimeTypeChanged({this.limeType});

  @override
  List<Object> get props => [limeType];
}

class OutSideOfKingdowChanged extends NormalSearchEvent {
  final OutsideOfKingdom outSideOfKingdom;

  OutSideOfKingdowChanged({this.outSideOfKingdom});

  @override
  List<Object> get props => [outSideOfKingdom];
}

class ShowTypeChanged extends NormalSearchEvent {
  final ShowType showType;

  ShowTypeChanged({@required this.showType});

  @override
  List<Object> get props => [showType];
}
