import '../../../core/app_export.dart';

/// This class is used in the [options_item_widget] screen.
class OptionsItemModel {
  OptionsItemModel({
    this.addtoPlaylist,
    this.addToPlaylist,
    this.id,
  }) {
    addtoPlaylist = addtoPlaylist ?? ImageConstant.imgClose;
    addToPlaylist = addToPlaylist ?? "Add to Playlist";
    id = id ?? "";
  }

  String? addtoPlaylist;

  String? addToPlaylist;

  String? id;
}
