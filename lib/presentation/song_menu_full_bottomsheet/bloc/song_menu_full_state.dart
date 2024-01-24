// ignore_for_file: must_be_immutable

part of 'song_menu_full_bloc.dart';

/// Represents the state of SongMenuFull in the application.
class SongMenuFullState extends Equatable {
  SongMenuFullState({this.songMenuFullModelObj});

  SongMenuFullModel? songMenuFullModelObj;

  @override
  List<Object?> get props => [
        songMenuFullModelObj,
      ];
  SongMenuFullState copyWith({SongMenuFullModel? songMenuFullModelObj}) {
    return SongMenuFullState(
      songMenuFullModelObj: songMenuFullModelObj ?? this.songMenuFullModelObj,
    );
  }
}
