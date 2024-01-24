// ignore_for_file: must_be_immutable

part of 'album_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AlbumDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AlbumDetailsEvent extends Equatable {}

/// Event that is dispatched when the AlbumDetails widget is first created.
class AlbumDetailsInitialEvent extends AlbumDetailsEvent {
  @override
  List<Object?> get props => [];
}
