import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/albums_item_model.dart';
import 'package:vibecity/presentation/albums_screen/models/albums_model.dart';
part 'albums_event.dart';
part 'albums_state.dart';

/// A bloc that manages the state of a Albums according to the event that is dispatched to it.
class AlbumsBloc extends Bloc<AlbumsEvent, AlbumsState> {
  AlbumsBloc(AlbumsState initialState) : super(initialState) {
    on<AlbumsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AlbumsInitialEvent event,
    Emitter<AlbumsState> emit,
  ) async {
    emit(state.copyWith(
        albumsModelObj: state.albumsModelObj
            ?.copyWith(albumsItemList: fillAlbumsItemList())));
  }

  List<AlbumsItemModel> fillAlbumsItemList() {
    return [
      AlbumsItemModel(
          flowerPower: ImageConstant.imgThumbnail78x78,
          flowerPower1: "Flower Power",
          rayCharles: "Ray Charles",
          zipcode: "2018"),
      AlbumsItemModel(
          flowerPower: ImageConstant.imgThumbnail1,
          flowerPower1: "This Is Not A Test",
          rayCharles: "Ray Charles",
          zipcode: "2018"),
      AlbumsItemModel(
          flowerPower: ImageConstant.imgThumbnail2,
          flowerPower1: "SHE IS COMING",
          rayCharles: "Ray Charles",
          zipcode: "2018"),
      AlbumsItemModel(
          flowerPower: ImageConstant.imgThumbnail3,
          flowerPower1: "Danheim",
          rayCharles: "Ray Charles",
          zipcode: "2018"),
      AlbumsItemModel(
          flowerPower: ImageConstant.imgThumbnail4,
          flowerPower1: "Wunder King",
          rayCharles: "Элджей",
          zipcode: "2018"),
      AlbumsItemModel(
          flowerPower: ImageConstant.imgThumbnail5,
          flowerPower1: "VELVET: Side A",
          rayCharles: "Adam Lambert",
          zipcode: "2018")
    ];
  }
}
