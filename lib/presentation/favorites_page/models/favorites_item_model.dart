import '../../../core/app_export.dart';

/// This class is used in the [favorites_item_widget] screen.
class FavoritesItemModel {
  FavoritesItemModel({
    this.tracks,
    this.addToPlaylist,
    this.id,
  }) {
    tracks = tracks ?? ImageConstant.imgIconsOnprimarycontainer24x24;
    addToPlaylist = addToPlaylist ?? "Tracks";
    id = id ?? "";
  }

  String? tracks;

  String? addToPlaylist;

  String? id;
}
