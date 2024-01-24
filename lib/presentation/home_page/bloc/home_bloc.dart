import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/newreleaseslist_item_model.dart';
import 'package:vibecity/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
            newreleaseslistItemList: fillNewreleaseslistItemList())));
  }

  List<NewreleaseslistItemModel> fillNewreleaseslistItemList() {
    return [
      NewreleaseslistItemModel(
          urgentSiege: ImageConstant.imgThumbnails,
          urgentSiege1: "Urgent Siege",
          damnedAnthem: "Damned Anthem"),
      NewreleaseslistItemModel(
          urgentSiege: ImageConstant.imgThumbnails181x159,
          urgentSiege1: "Urgent Siege",
          damnedAnthem: "Damned Anthem")
    ];
  }
}
