import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/artists_item_model.dart';
import 'package:vibecity/presentation/artists_screen/models/artists_model.dart';
part 'artists_event.dart';
part 'artists_state.dart';

/// A bloc that manages the state of a Artists according to the event that is dispatched to it.
class ArtistsBloc extends Bloc<ArtistsEvent, ArtistsState> {
  ArtistsBloc(ArtistsState initialState) : super(initialState) {
    on<ArtistsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ArtistsInitialEvent event,
    Emitter<ArtistsState> emit,
  ) async {
    emit(state.copyWith(
        artistsModelObj: state.artistsModelObj
            ?.copyWith(artistsItemList: fillArtistsItemList())));
  }

  List<ArtistsItemModel> fillArtistsItemList() {
    return [
      ArtistsItemModel(
          lorn: ImageConstant.imgPhoto876x78,
          renaissance: "Lorn",
          podvalCaplella: "843 tracks . 23 albums"),
      ArtistsItemModel(
          lorn: ImageConstant.imgPhoto87,
          renaissance: "Danheim",
          podvalCaplella: "843 tracks . 23 albums"),
      ArtistsItemModel(
          lorn: ImageConstant.imgPhoto88,
          renaissance: "Brand X Music",
          podvalCaplella: "843 tracks . 23 albums"),
      ArtistsItemModel(
          lorn: ImageConstant.imgPhoto89,
          renaissance: "Damned Anthem",
          podvalCaplella: "843 tracks . 23 albums"),
      ArtistsItemModel(
          lorn: ImageConstant.imgPhoto810,
          renaissance: "BONES",
          podvalCaplella: "843 tracks . 23 albums"),
      ArtistsItemModel(
          lorn: ImageConstant.imgPhoto811,
          renaissance: "Epic North",
          podvalCaplella: "843 tracks . 23 albums")
    ];
  }
}
