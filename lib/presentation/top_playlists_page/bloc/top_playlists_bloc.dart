import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/topplaylist_item_model.dart';
import 'package:vibecity/presentation/top_playlists_page/models/top_playlists_model.dart';
part 'top_playlists_event.dart';
part 'top_playlists_state.dart';

/// A bloc that manages the state of a TopPlaylists according to the event that is dispatched to it.
class TopPlaylistsBloc extends Bloc<TopPlaylistsEvent, TopPlaylistsState> {
  TopPlaylistsBloc(TopPlaylistsState initialState) : super(initialState) {
    on<TopPlaylistsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TopPlaylistsInitialEvent event,
    Emitter<TopPlaylistsState> emit,
  ) async {
    emit(state.copyWith(
        topPlaylistsModelObj: state.topPlaylistsModelObj
            ?.copyWith(topplaylistItemList: fillTopplaylistItemList())));
  }

  List<TopplaylistItemModel> fillTopplaylistItemList() {
    return [
      TopplaylistItemModel(
          renaissance: ImageConstant.imgPlaylistBackground,
          renaissance1: "Renaissance",
          tracksCounter: "843 tracks",
          duration: "23 hours"),
      TopplaylistItemModel(
          renaissance: ImageConstant.imgPlaylistBackground181x342,
          renaissance1: "Radiance",
          tracksCounter: "843 tracks",
          duration: "23 hours"),
      TopplaylistItemModel(
          renaissance: ImageConstant.imgPlaylistBackground1,
          renaissance1: "Urgent Siege",
          tracksCounter: "843 tracks",
          duration: "23 hours")
    ];
  }
}
