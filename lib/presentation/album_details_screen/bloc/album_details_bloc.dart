import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/songslist_item_model.dart';
import 'package:vibecity/presentation/album_details_screen/models/album_details_model.dart';
part 'album_details_event.dart';
part 'album_details_state.dart';

/// A bloc that manages the state of a AlbumDetails according to the event that is dispatched to it.
class AlbumDetailsBloc extends Bloc<AlbumDetailsEvent, AlbumDetailsState> {
  AlbumDetailsBloc(AlbumDetailsState initialState) : super(initialState) {
    on<AlbumDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AlbumDetailsInitialEvent event,
    Emitter<AlbumDetailsState> emit,
  ) async {
    emit(state.copyWith(
        albumDetailsModelObj: state.albumDetailsModelObj
            ?.copyWith(songslistItemList: fillSongslistItemList())));
  }

  List<SongslistItemModel> fillSongslistItemList() {
    return [
      SongslistItemModel(
          count: "1", burning: "Burning", podvalCaplella: "Podval Caplella"),
      SongslistItemModel(burning: "Flashbacks", podvalCaplella: "Emika"),
      SongslistItemModel(
          burning: "Renaissance", podvalCaplella: "Podval Caplella"),
      SongslistItemModel(burning: "Ivar’s Revenge", podvalCaplella: "Danheim")
    ];
  }
}
