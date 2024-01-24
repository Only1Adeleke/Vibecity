// ignore_for_file: must_be_immutable

part of 'top_playlists_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TopPlaylists widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TopPlaylistsEvent extends Equatable {}

/// Event that is dispatched when the TopPlaylists widget is first created.
class TopPlaylistsInitialEvent extends TopPlaylistsEvent {
  @override
  List<Object?> get props => [];
}
