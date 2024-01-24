// ignore_for_file: must_be_immutable

part of 'playlist_bloc.dart';

/// Represents the state of Playlist in the application.
class PlaylistState extends Equatable {
  PlaylistState({this.playlistModelObj});

  PlaylistModel? playlistModelObj;

  @override
  List<Object?> get props => [
        playlistModelObj,
      ];
  PlaylistState copyWith({PlaylistModel? playlistModelObj}) {
    return PlaylistState(
      playlistModelObj: playlistModelObj ?? this.playlistModelObj,
    );
  }
}
