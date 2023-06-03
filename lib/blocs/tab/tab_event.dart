import 'package:customer_app/models/models.dart';
import 'package:equatable/equatable.dart';

abstract class TabEvent extends Equatable {
  const TabEvent();

  @override
  List<Object> get props => [];
}

class UpdateTab extends TabEvent {
  final AppTab tab;
  const UpdateTab(this.tab);

  @override
  List<Object> get props => [tab];

  @override
  String toString() => 'UpdateTab {tab: $tab}';
}
