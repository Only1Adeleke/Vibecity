import '../../../core/app_export.dart';

/// This class is used in the [playlist_item_widget] screen.
class PlaylistItemModel {
  PlaylistItemModel({
    this.flashbacks,
    this.renaissance,
    this.podvalCaplella,
    this.id,
  }) {
    flashbacks = flashbacks ?? ImageConstant.imgPhoto8;
    renaissance = renaissance ?? "Flashbacks";
    podvalCaplella = podvalCaplella ?? "Emika";
    id = id ?? "";
  }

  String? flashbacks;

  String? renaissance;

  String? podvalCaplella;

  String? id;
}
