// ignore_for_file: must_be_immutable

part of 'playlist_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Playlist widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PlaylistEvent extends Equatable {}

/// Event that is dispatched when the Playlist widget is first created.
class PlaylistInitialEvent extends PlaylistEvent {
  @override
  List<Object?> get props => [];
}
