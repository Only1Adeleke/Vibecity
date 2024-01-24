// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'topplaylist_item_model.dart';

/// This class defines the variables used in the [top_playlists_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TopPlaylistsModel extends Equatable {
  TopPlaylistsModel({this.topplaylistItemList = const []}) {}

  List<TopplaylistItemModel> topplaylistItemList;

  TopPlaylistsModel copyWith(
      {List<TopplaylistItemModel>? topplaylistItemList}) {
    return TopPlaylistsModel(
      topplaylistItemList: topplaylistItemList ?? this.topplaylistItemList,
    );
  }

  @override
  List<Object?> get props => [topplaylistItemList];
}
