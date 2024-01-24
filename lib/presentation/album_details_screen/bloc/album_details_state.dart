// ignore_for_file: must_be_immutable

part of 'album_details_bloc.dart';

/// Represents the state of AlbumDetails in the application.
class AlbumDetailsState extends Equatable {
  AlbumDetailsState({this.albumDetailsModelObj});

  AlbumDetailsModel? albumDetailsModelObj;

  @override
  List<Object?> get props => [
        albumDetailsModelObj,
      ];
  AlbumDetailsState copyWith({AlbumDetailsModel? albumDetailsModelObj}) {
    return AlbumDetailsState(
      albumDetailsModelObj: albumDetailsModelObj ?? this.albumDetailsModelObj,
    );
  }
}
