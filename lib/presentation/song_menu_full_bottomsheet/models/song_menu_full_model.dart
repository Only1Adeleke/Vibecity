// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'options_item_model.dart';

/// This class defines the variables used in the [song_menu_full_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SongMenuFullModel extends Equatable {
  SongMenuFullModel({this.optionsItemList = const []}) {}

  List<OptionsItemModel> optionsItemList;

  SongMenuFullModel copyWith({List<OptionsItemModel>? optionsItemList}) {
    return SongMenuFullModel(
      optionsItemList: optionsItemList ?? this.optionsItemList,
    );
  }

  @override
  List<Object?> get props => [optionsItemList];
}
