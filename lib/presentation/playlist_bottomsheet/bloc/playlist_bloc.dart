import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/playlist_item_model.dart';
import 'package:vibecity/presentation/playlist_bottomsheet/models/playlist_model.dart';
part 'playlist_event.dart';
part 'playlist_state.dart';

/// A bloc that manages the state of a Playlist according to the event that is dispatched to it.
class PlaylistBloc extends Bloc<PlaylistEvent, PlaylistState> {
  PlaylistBloc(PlaylistState initialState) : super(initialState) {
    on<PlaylistInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PlaylistInitialEvent event,
    Emitter<PlaylistState> emit,
  ) async {
    emit(state.copyWith(
        playlistModelObj: state.playlistModelObj?.copyWith(
      playlistItemList: fillPlaylistItemList(),
    )));
  }

  List<PlaylistItemModel> fillPlaylistItemList() {
    return [
      PlaylistItemModel(
          flashbacks: ImageConstant.imgPhoto8,
          renaissance: "Flashbacks",
          podvalCaplella: "Emika"),
      PlaylistItemModel(
          flashbacks: ImageConstant.imgPhoto81,
          renaissance: "Ivar’s Revenge",
          podvalCaplella: "Danheim"),
      PlaylistItemModel(
          flashbacks: ImageConstant.imgPhoto82,
          renaissance: "Urgent Siege",
          podvalCaplella: "Damned Anthem"),
      PlaylistItemModel(flashbacks: ImageConstant.imgPhoto83),
      PlaylistItemModel(
          flashbacks: ImageConstant.imgPhoto85,
          renaissance: "Entangled",
          podvalCaplella: "Lorn"),
      PlaylistItemModel(
          flashbacks: ImageConstant.imgPhoto86,
          renaissance: "The Cycle Continues",
          podvalCaplella: "Mac Quayle")
    ];
  }
}
