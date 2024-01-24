// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'albums_item_model.dart';

/// This class defines the variables used in the [albums_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AlbumsModel extends Equatable {
  AlbumsModel({this.albumsItemList = const []}) {}

  List<AlbumsItemModel> albumsItemList;

  AlbumsModel copyWith({List<AlbumsItemModel>? albumsItemList}) {
    return AlbumsModel(
      albumsItemList: albumsItemList ?? this.albumsItemList,
    );
  }

  @override
  List<Object?> get props => [albumsItemList];
}
