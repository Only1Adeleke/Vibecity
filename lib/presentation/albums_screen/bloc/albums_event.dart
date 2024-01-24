// ignore_for_file: must_be_immutable

part of 'albums_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Albums widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AlbumsEvent extends Equatable {}

/// Event that is dispatched when the Albums widget is first created.
class AlbumsInitialEvent extends AlbumsEvent {
  @override
  List<Object?> get props => [];
}
