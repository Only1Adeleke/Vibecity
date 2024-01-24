// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'artists_item_model.dart';

/// This class defines the variables used in the [artists_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArtistsModel extends Equatable {
  ArtistsModel({this.artistsItemList = const []}) {}

  List<ArtistsItemModel> artistsItemList;

  ArtistsModel copyWith({List<ArtistsItemModel>? artistsItemList}) {
    return ArtistsModel(
      artistsItemList: artistsItemList ?? this.artistsItemList,
    );
  }

  @override
  List<Object?> get props => [artistsItemList];
}
