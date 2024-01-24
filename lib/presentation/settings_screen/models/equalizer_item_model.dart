import '../../../core/app_export.dart';

/// This class is used in the [equalizer_item_widget] screen.
class EqualizerItemModel {
  EqualizerItemModel({
    this.dBCounter,
    this.hzCounter,
    this.id,
  }) {
    dBCounter = dBCounter ?? "4 dB";
    hzCounter = hzCounter ?? "100 Hz";
    id = id ?? "";
  }

  String? dBCounter;

  String? hzCounter;

  String? id;
}
