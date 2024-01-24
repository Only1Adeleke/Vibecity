// ignore_for_file: must_be_immutable

part of 'song_menu_full_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SongMenuFull widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SongMenuFullEvent extends Equatable {}

/// Event that is dispatched when the SongMenuFull widget is first created.
class SongMenuFullInitialEvent extends SongMenuFullEvent {
  @override
  List<Object?> get props => [];
}
