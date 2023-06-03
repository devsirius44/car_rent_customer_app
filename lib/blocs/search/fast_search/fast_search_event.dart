import 'package:customer_app/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class FastSearchEvent extends Equatable {
  const FastSearchEvent();

  @override
  List<Object> get props => [];
}

class SearchInChanged extends FastSearchEvent {
  final SearchIn searchIn;

  SearchInChanged({@required this.searchIn});

  @override
  List<Object> get props => [searchIn];
}

class CarClassChanged extends FastSearchEvent {
  final CarClass carClass;

  CarClassChanged({@required this.carClass});

  @override
  List<Object> get props => [carClass];
}

class ShowTypeChanged extends FastSearchEvent {
  final ShowType showType;

  ShowTypeChanged({@required this.showType});

  @override
  List<Object> get props => [showType];
}
