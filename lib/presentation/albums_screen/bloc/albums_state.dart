// ignore_for_file: must_be_immutable

part of 'albums_bloc.dart';

/// Represents the state of Albums in the application.
class AlbumsState extends Equatable {
  AlbumsState({this.albumsModelObj});

  AlbumsModel? albumsModelObj;

  @override
  List<Object?> get props => [
        albumsModelObj,
      ];
  AlbumsState copyWith({AlbumsModel? albumsModelObj}) {
    return AlbumsState(
      albumsModelObj: albumsModelObj ?? this.albumsModelObj,
    );
  }
}
