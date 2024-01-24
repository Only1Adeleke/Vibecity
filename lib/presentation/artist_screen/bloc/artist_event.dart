// ignore_for_file: must_be_immutable

part of 'artist_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Artist widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ArtistEvent extends Equatable {}

/// Event that is dispatched when the Artist widget is first created.
class ArtistInitialEvent extends ArtistEvent {
  @override
  List<Object?> get props => [];
}
