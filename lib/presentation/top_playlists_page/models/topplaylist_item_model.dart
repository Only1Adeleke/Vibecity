import '../../../core/app_export.dart';

/// This class is used in the [topplaylist_item_widget] screen.
class TopplaylistItemModel {
  TopplaylistItemModel({
    this.renaissance,
    this.renaissance1,
    this.tracksCounter,
    this.duration,
    this.id,
  }) {
    renaissance = renaissance ?? ImageConstant.imgPlaylistBackground;
    renaissance1 = renaissance1 ?? "Renaissance";
    tracksCounter = tracksCounter ?? "843 tracks";
    duration = duration ?? "23 hours";
    id = id ?? "";
  }

  String? renaissance;

  String? renaissance1;

  String? tracksCounter;

  String? duration;

  String? id;
}
