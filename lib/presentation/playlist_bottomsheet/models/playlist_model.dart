// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'playlist_item_model.dart';

/// This class defines the variables used in the [playlist_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class PlaylistModel extends Equatable {
  PlaylistModel({this.playlistItemList = const []}) {}

  List<PlaylistItemModel> playlistItemList;

  PlaylistModel copyWith({List<PlaylistItemModel>? playlistItemList}) {
    return PlaylistModel(
      playlistItemList: playlistItemList ?? this.playlistItemList,
    );
  }

  @override
  List<Object?> get props => [playlistItemList];
}
