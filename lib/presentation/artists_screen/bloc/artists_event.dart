// ignore_for_file: must_be_immutable

part of 'artists_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Artists widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ArtistsEvent extends Equatable {}

/// Event that is dispatched when the Artists widget is first created.
class ArtistsInitialEvent extends ArtistsEvent {
  @override
  List<Object?> get props => [];
}
