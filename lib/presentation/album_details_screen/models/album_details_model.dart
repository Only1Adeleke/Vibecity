// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'songslist_item_model.dart';

/// This class defines the variables used in the [album_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AlbumDetailsModel extends Equatable {
  AlbumDetailsModel({this.songslistItemList = const []}) {}

  List<SongslistItemModel> songslistItemList;

  AlbumDetailsModel copyWith({List<SongslistItemModel>? songslistItemList}) {
    return AlbumDetailsModel(
      songslistItemList: songslistItemList ?? this.songslistItemList,
    );
  }

  @override
  List<Object?> get props => [songslistItemList];
}
