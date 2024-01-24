// ignore_for_file: must_be_immutable

part of 'artist_bloc.dart';

/// Represents the state of Artist in the application.
class ArtistState extends Equatable {
  ArtistState({this.artistModelObj});

  ArtistModel? artistModelObj;

  @override
  List<Object?> get props => [
        artistModelObj,
      ];
  ArtistState copyWith({ArtistModel? artistModelObj}) {
    return ArtistState(
      artistModelObj: artistModelObj ?? this.artistModelObj,
    );
  }
}
