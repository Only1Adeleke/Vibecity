import '../../../core/app_export.dart';

/// This class is used in the [artists_item_widget] screen.
class ArtistsItemModel {
  ArtistsItemModel({
    this.lorn,
    this.renaissance,
    this.podvalCaplella,
    this.id,
  }) {
    lorn = lorn ?? ImageConstant.imgPhoto876x78;
    renaissance = renaissance ?? "Lorn";
    podvalCaplella = podvalCaplella ?? "843 tracks . 23 albums";
    id = id ?? "";
  }

  String? lorn;

  String? renaissance;

  String? podvalCaplella;

  String? id;
}
