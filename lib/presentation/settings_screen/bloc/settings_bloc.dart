import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/equalizer_item_model.dart';
import 'package:vibecity/presentation/settings_screen/models/settings_model.dart';
part 'settings_event.dart';
part 'settings_state.dart';

/// A bloc that manages the state of a Settings according to the event that is dispatched to it.
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(SettingsState initialState) : super(initialState) {
    on<SettingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingsInitialEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(
        settingsModelObj: state.settingsModelObj
            ?.copyWith(equalizerItemList: fillEqualizerItemList())));
  }

  List<EqualizerItemModel> fillEqualizerItemList() {
    return [
      EqualizerItemModel(dBCounter: "4 dB", hzCounter: "100 Hz"),
      EqualizerItemModel(dBCounter: "3 dB", hzCounter: "150 Hz"),
      EqualizerItemModel(dBCounter: "0 dB", hzCounter: "200 Hz"),
      EqualizerItemModel(dBCounter: "0 dB", hzCounter: "250 Hz"),
      EqualizerItemModel(dBCounter: "-4 dB", hzCounter: "300 Hz"),
      EqualizerItemModel(dBCounter: "0 dB", hzCounter: "350 Hz")
    ];
  }
}
