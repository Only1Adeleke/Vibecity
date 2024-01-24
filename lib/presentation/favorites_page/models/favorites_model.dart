// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'favorites_item_model.dart';

/// This class defines the variables used in the [favorites_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FavoritesModel extends Equatable {
  FavoritesModel({this.favoritesItemList = const []}) {}

  List<FavoritesItemModel> favoritesItemList;

  FavoritesModel copyWith({List<FavoritesItemModel>? favoritesItemList}) {
    return FavoritesModel(
      favoritesItemList: favoritesItemList ?? this.favoritesItemList,
    );
  }

  @override
  List<Object?> get props => [favoritesItemList];
}
