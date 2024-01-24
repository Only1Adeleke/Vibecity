// ignore_for_file: must_be_immutable

part of 'favorites_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Favorites widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FavoritesEvent extends Equatable {}

/// Event that is dispatched when the Favorites widget is first created.
class FavoritesInitialEvent extends FavoritesEvent {
  @override
  List<Object?> get props => [];
}
