// ignore_for_file: must_be_immutable

part of 'list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///List widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListEvent extends Equatable {}

/// Event that is dispatched when the List widget is first created.
class ListInitialEvent extends ListEvent {
  @override
  List<Object?> get props => [];
}
