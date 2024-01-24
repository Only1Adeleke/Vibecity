// ignore_for_file: must_be_immutable

part of 'favorites_bloc.dart';

/// Represents the state of Favorites in the application.
class FavoritesState extends Equatable {
  FavoritesState({this.favoritesModelObj});

  FavoritesModel? favoritesModelObj;

  @override
  List<Object?> get props => [
        favoritesModelObj,
      ];
  FavoritesState copyWith({FavoritesModel? favoritesModelObj}) {
    return FavoritesState(
      favoritesModelObj: favoritesModelObj ?? this.favoritesModelObj,
    );
  }
}
