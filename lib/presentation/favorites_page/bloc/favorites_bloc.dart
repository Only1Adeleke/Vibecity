import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/favorites_item_model.dart';
import 'package:vibecity/presentation/favorites_page/models/favorites_model.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

/// A bloc that manages the state of a Favorites according to the event that is dispatched to it.
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc(FavoritesState initialState) : super(initialState) {
    on<FavoritesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FavoritesInitialEvent event,
    Emitter<FavoritesState> emit,
  ) async {
    emit(state.copyWith(
        favoritesModelObj: state.favoritesModelObj
            ?.copyWith(favoritesItemList: fillFavoritesItemList())));
  }

  List<FavoritesItemModel> fillFavoritesItemList() {
    return [
      FavoritesItemModel(
          tracks: ImageConstant.imgIconsOnprimarycontainer24x24,
          addToPlaylist: "Tracks"),
      FavoritesItemModel(
          tracks: ImageConstant.imgLock, addToPlaylist: "Artist"),
      FavoritesItemModel(
          tracks: ImageConstant.imgIcons, addToPlaylist: "Album"),
      FavoritesItemModel(
          tracks: ImageConstant.imgIconsOnprimarycontainer,
          addToPlaylist: "Playlists"),
      FavoritesItemModel(
          tracks: ImageConstant.imgDownload, addToPlaylist: "Download")
    ];
  }
}
