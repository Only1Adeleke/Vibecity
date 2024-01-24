// ignore_for_file: must_be_immutable

part of 'list_bloc.dart';

/// Represents the state of List in the application.
class ListState extends Equatable {
  ListState({this.listModelObj});

  ListModel? listModelObj;

  @override
  List<Object?> get props => [
        listModelObj,
      ];
  ListState copyWith({ListModel? listModelObj}) {
    return ListState(
      listModelObj: listModelObj ?? this.listModelObj,
    );
  }
}
