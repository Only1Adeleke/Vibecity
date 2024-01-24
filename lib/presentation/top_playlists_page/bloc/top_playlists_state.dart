// ignore_for_file: must_be_immutable

part of 'top_playlists_bloc.dart';

/// Represents the state of TopPlaylists in the application.
class TopPlaylistsState extends Equatable {
  TopPlaylistsState({this.topPlaylistsModelObj});

  TopPlaylistsModel? topPlaylistsModelObj;

  @override
  List<Object?> get props => [
        topPlaylistsModelObj,
      ];
  TopPlaylistsState copyWith({TopPlaylistsModel? topPlaylistsModelObj}) {
    return TopPlaylistsState(
      topPlaylistsModelObj: topPlaylistsModelObj ?? this.topPlaylistsModelObj,
    );
  }
}
