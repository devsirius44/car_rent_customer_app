import 'package:customer_app/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class SearchTypeEvent extends Equatable {
  const SearchTypeEvent();

  @override
  List<Object> get props => [];
}

class UpdateSearchType extends SearchTypeEvent {
  final SearchType searchType;

  UpdateSearchType({@required this.searchType});

  @override
  List<Object> get props => [searchType];
}
