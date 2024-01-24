// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'equalizer_item_model.dart';

/// This class defines the variables used in the [settings_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SettingsModel extends Equatable {
  SettingsModel({this.equalizerItemList = const []}) {}

  List<EqualizerItemModel> equalizerItemList;

  SettingsModel copyWith({List<EqualizerItemModel>? equalizerItemList}) {
    return SettingsModel(
      equalizerItemList: equalizerItemList ?? this.equalizerItemList,
    );
  }

  @override
  List<Object?> get props => [equalizerItemList];
}
